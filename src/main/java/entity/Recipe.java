package entity;

import entity.basEntity.ChangeTrackerEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "recipes")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Recipe extends ChangeTrackerEntity {

    private String name;

    private String ingredients;

    private String description;

    private int preparationTime;

    @Column(columnDefinition = "LONGTEXT")
    private String preparation;

    @ManyToOne
    @JoinColumn(name = "id_admin")
    private Admin admin;
}
