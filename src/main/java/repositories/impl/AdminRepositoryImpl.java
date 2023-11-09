package repositories.impl;

import entity.Admin;
import org.springframework.stereotype.Repository;
import repositories.abstracts.AbstractCRUDRepository;
import repositories.interfaces.AdminRepository;

import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.transaction.Transactional;
import java.util.List;

@Repository("AdminRepositoryImpl")
public class AdminRepositoryImpl extends AbstractCRUDRepository implements AdminRepository {

    @Override
    @Transactional
    public Admin create(Admin entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public Admin read(int entityId) {
        return entityManager.find(Admin.class, entityId);
    }

    @Override
    @Transactional
    public void update(Admin entity) {
        entityManager.merge(entity);
    }

    @Override
    @Transactional
    public void delete(Admin entity) {
        entityManager.remove(entity);
    }

    @Override
    public List<Admin> findAll() {
        Query query = entityManager.createQuery("SELECT a FROM Admin a");
        return query.getResultList();
    }

    @Override
    public Admin findAdminByEmail(String email) {
        Query query = entityManager.createQuery("SELECT a FROM  Admin a where a.email =:email")
                .setParameter("email", email);
        return (Admin) query.getSingleResult();
    }

    @Override
    public boolean ifAdminExist(String email) {
        Query query = entityManager.createQuery("SELECT a FROM  Admin a where a.email =:email")
                .setParameter("email", email);
        return query.getResultList().size() == 1;
    }

}
