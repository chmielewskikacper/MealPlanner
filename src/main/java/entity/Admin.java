package entity;

import entity.basEntity.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "admins")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin extends BaseEntity {

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private boolean superAdmin;
    private boolean enable;
}
