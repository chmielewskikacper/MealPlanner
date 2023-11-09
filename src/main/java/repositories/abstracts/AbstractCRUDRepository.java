package repositories.abstracts;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

public abstract class AbstractCRUDRepository {

    @PersistenceContext
    public EntityManager entityManager;
}
