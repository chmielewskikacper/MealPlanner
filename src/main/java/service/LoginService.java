package service;


import dto.LoggedUserDto;
import entity.Admin;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;
import repositories.interfaces.AdminRepository;

@Service("loginService")
@SessionScope
public class LoginService {

    private final AdminRepository adminRepository;

    private HashPasswordService hashPasswordService;

    private LoggedUserDto userDto;

    public LoginService(AdminRepository adminRepository, HashPasswordService hashPasswordService) {
        this.adminRepository = adminRepository;
        this.hashPasswordService = hashPasswordService;
    }


    public boolean loginUser(String email, String password) {
        if (userDto == null) {
            if (adminRepository.ifAdminExist(email)) {
                Admin admin = adminRepository.findAdminByEmail(email);
                String passwordToCheck = admin.getPassword();
                if (hashPasswordService.checkPass(password, passwordToCheck)) {
                    this.userDto = new LoggedUserDto(admin);
                    return true;
                }
            }
        }
        return false;
    }

    public void invalidateLoggedUser() {
        userDto = null;
    }

    public LoggedUserDto getLoggedUser() {
        return userDto;
    }
}
