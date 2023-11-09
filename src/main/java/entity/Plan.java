package entity;

import entity.basEntity.ChangeTrackerEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "plans")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Plan extends ChangeTrackerEntity {

    private String name;

    private String description;

    @ManyToOne
    @JoinColumn(name = "id_admin")
    private Admin admin;
}
