package service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

@Service("hashPasswordService")
public class HashPasswordService {

    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }
    public  boolean checkPass(String password, String hashedPassword) {
        if(BCrypt.checkpw(password, hashedPassword)) {
            return true;
        }
        else {
            return false;
        }
    }
}
