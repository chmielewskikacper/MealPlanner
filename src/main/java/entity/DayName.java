package entity;

import entity.basEntity.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "dayName")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DayName extends BaseEntity {

    private String name;
    private int displayOrder;
}
