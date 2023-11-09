package repositories.interfaces;

import entity.Admin;

public interface AdminRepository extends  CRUDRepository <Admin> {
    Admin findAdminByEmail(String email);

    boolean ifAdminExist(String email);
}
