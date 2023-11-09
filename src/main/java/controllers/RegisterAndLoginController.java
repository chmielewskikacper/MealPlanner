package controllers;

import entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repositories.interfaces.AdminRepository;
import service.HashPasswordService;
import service.LoginService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class RegisterAndLoginController {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private LoginService loginService;

    @PostMapping("/register")
    public String addUser(@RequestParam String name,
                          @RequestParam String lastName,
                          @RequestParam String email,
                          @RequestParam String password1,
                          Model model) {
        if (adminRepository.ifAdminExist(email)) {
            model.addAttribute("message5", "Wprowadzony e-mail jest już zarejestrowany, zaloguj się");
            return "/login";
        } else {
            Admin admin = new Admin();
            HashPasswordService hash = new HashPasswordService();
            admin.setFirstName(name);
            admin.setLastName(lastName);
            admin.setEmail(email);
            admin.setPassword(hash.hashPassword(password1));
            admin.setSuperAdmin(false);
            admin.setEnable(false);
            adminRepository.create(admin);
            return "/login";
        }
    }

    @PostMapping("/login")
    public String login(@RequestParam String email,
                        @RequestParam String password,
                        HttpServletRequest request,
                        Model model) {
        HttpSession ses = request.getSession();
        if (loginService.loginUser(email, password)) {
            ses.setAttribute("loggedInEmail", email);
            return "redirect:/appDashBoard";
        } else if (!adminRepository.ifAdminExist(email)) {
            model.addAttribute("message5", "Wprowadzony e-mail nie istnieje, zarejestruj się ");
            return "/register";
        } else {
            model.addAttribute("message5", "Wprowadzono nieprawidłowe dane");
            return "/login";
        }
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession ses = request.getSession();
        ses.removeAttribute("loggedInEmail");
        loginService.invalidateLoggedUser();
        return "/landingPage";
    }
}
