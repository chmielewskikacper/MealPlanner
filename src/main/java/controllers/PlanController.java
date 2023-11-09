package controllers;

import entity.Admin;
import entity.Plan;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repositories.interfaces.AdminRepository;
import repositories.interfaces.PlanRepository;
import service.LoginService;

@Controller
@RequiredArgsConstructor
public class PlanController {

    private final PlanRepository planRepository;

    private final LoginService loginService;

    private final AdminRepository adminRepository;

    @PostMapping("/addPlan")
    public String addPlan(@RequestParam String planName,
                          @RequestParam String planDescription) {
        Admin admin = adminRepository.findAdminByEmail(loginService.getLoggedUser().getEmail());
        Plan plan = new Plan(planName, planDescription, admin);
        planRepository.create(plan);
        return "/planList";
    }

}
