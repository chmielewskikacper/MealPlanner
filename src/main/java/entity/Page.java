package entity;

import entity.basEntity.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "pages")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Page extends BaseEntity {
    private String title;
    private String description;
    private String slug;
}
