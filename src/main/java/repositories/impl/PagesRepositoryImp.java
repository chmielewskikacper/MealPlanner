package repositories.impl;

import entity.Admin;
import entity.Page;
import org.springframework.stereotype.Repository;
import repositories.abstracts.AbstractCRUDRepository;
import repositories.interfaces.PagesRepository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository("PagesRepositoryImp")
public class PagesRepositoryImp extends AbstractCRUDRepository implements PagesRepository {

    @Override
    @Transactional
    public Page create(Page entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public Page read(int entityId) {
        return entityManager.find(Page.class, entityId);
    }

    @Override
    @Transactional
    public void update(Page entity) {
        entityManager.merge(entity);
    }

    @Override
    @Transactional
    public void delete(Page entity) {
        entityManager.remove(entityManager.contains(entity) ?
                entity : entityManager.merge(entity));
    }

    @Override
    public List<Page> findAll() {
        Query query = entityManager.createQuery("SELECT a FROM Admin a");
        return query.getResultList();
    }
}
