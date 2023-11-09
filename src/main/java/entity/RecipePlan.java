package entity;

import entity.basEntity.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "recipePlan")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RecipePlan extends BaseEntity {
    private String mealName;
    private Integer displayOrder;

    @ManyToOne
    @JoinColumn(name = "id_recipe")
    private Recipe recipe;

    @ManyToOne
    @JoinColumn(name = "id_dayName")
    private DayName dayName;

    @ManyToOne
    @JoinColumn(name = "id_plan")
    private Plan plan;
}
