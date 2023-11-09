package entity.basEntity;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import java.time.LocalDateTime;
@MappedSuperclass
public class ChangeTrackerEntity extends BaseEntity {

    @Column(name = "created_on")
    private LocalDateTime created;

    @Column(name = "update_on")
    private LocalDateTime update;

    @PrePersist
    public void created() {
        created = LocalDateTime.now();
    }

    @PreUpdate
    public void updated() {
        update = LocalDateTime.now();
    }

    public LocalDateTime getCreated() {
        return created;
    }

    public void setCreated(LocalDateTime created) {
        this.created = created;
    }

    public LocalDateTime getUpdate() {
        return update;
    }

    public void setUpdate(LocalDateTime update) {
        this.update = update;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ChangeTrackerEntity)) return false;
        if (!super.equals(o)) return false;

        ChangeTrackerEntity that = (ChangeTrackerEntity) o;

        if (!getCreated().equals(that.getCreated())) return false;
        return getUpdate() != null ? getUpdate().equals(that.getUpdate()) : that.getUpdate() == null;
    }

    @Override
    public int hashCode() {
        int result = super.hashCode();
        result = 31 * result + getCreated().hashCode();
        result = 31 * result + (getUpdate() != null ? getUpdate().hashCode() : 0);
        return result;
    }
}
