package repositories.impl;

import entity.DayName;
import org.springframework.stereotype.Repository;
import repositories.abstracts.AbstractCRUDRepository;
import repositories.interfaces.DayNameRepository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository("DayNameRepositoryImpl")
public class DayNameRepositoryImpl extends AbstractCRUDRepository implements DayNameRepository {


    @Override
    @Transactional
    public DayName create(DayName entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public DayName read(int entityId) {
        return entityManager.find(DayName.class, entityId);
    }

    @Override
    @Transactional
    public void update(DayName entity) {
        entityManager.merge(entity);
    }

    @Override
    @Transactional
    public void delete(DayName entity) {
        entityManager.remove(entity);
    }

    @Override
    public List<DayName> findAll() {
        Query query = entityManager.createQuery("SELECT d FROM DayName d");
        return query.getResultList();
    }

    @Override
    public DayName getDayName(int dayNameId) {
        Query query = entityManager.createQuery("select d from DayName d where d.id=:dayName").setParameter("dayName",dayNameId);
        return (DayName) query.getSingleResult();
    }
}
