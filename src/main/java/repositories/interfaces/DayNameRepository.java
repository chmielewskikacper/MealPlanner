package repositories.interfaces;

import entity.DayName;

public interface DayNameRepository extends CRUDRepository<DayName> {
    DayName getDayName(int dayNameId);
}
