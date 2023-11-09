package repositories.impl;

import entity.Plan;
import org.springframework.stereotype.Repository;
import repositories.abstracts.AbstractCRUDRepository;
import repositories.interfaces.PlanRepository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository("PlanRepositoryImpl")
public class PlanRepositoryImpl extends AbstractCRUDRepository implements PlanRepository {


    @Override
    @Transactional
    public Plan create(Plan entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public Plan read(int entityId) {
        return entityManager.find(Plan.class, entityId);
    }

    @Override
    @Transactional
    public void update(Plan entity) {
        entityManager.merge(entity);
    }

    @Override
    @Transactional
    public void delete(Plan entity) {
        entityManager.remove(entity);
    }

    @Override
    public List<Plan> findAll() {
        Query query = entityManager.createQuery("SELECT p FROM Plan p");
        return query.getResultList();
    }

    @Override
    public long numberOfPlans(int adminId) {
        Query query = entityManager.createQuery("SELECT count (p) from Plan p where p.admin.id =:adminId").setParameter("adminId",adminId);
        return (long) query.getSingleResult();
    }

    @Override
    public List<Plan> getPlansFromAdmin(int adminId) {
        Query query = entityManager.createQuery("SELECT p from Plan p where p.admin.id=:adminId").setParameter("adminId",adminId);
        return query.getResultList();
    }


    @Override
    public List<Plan> getLastAddedPlan(int adminId) {
        Query query = entityManager.createQuery("SELECT p FROM Plan p where p.admin.id =: adminId ORDER BY p.created desc").setParameter("adminId", adminId).setMaxResults(1);
        return query.getResultList();
    }

    @Override
    public String getNamePlan(List<Plan> planList) {
        return planList.get(0).getName();
    }

    @Override
    public String getDescriptionPlan(List<Plan> planList) {
        return planList.get(0).getDescription();
    }

    @Override
    public Plan getPlan(int planId) {
        Query query = entityManager.createQuery("SELECT p from Plan p where  p.id=:planId").setParameter("planId",planId);
        return (Plan) query.getSingleResult();
    }

    @Override
    public boolean checkPlanAdmin(int adminId, int planId) {
        Query query = entityManager.createQuery("SELECT p FROM Plan p where p.id =:planId and p.admin.id=:adminId").setParameter("planId",planId).setParameter("adminId",adminId).setMaxResults(1);
        if (query.getResultList().size() == 1) {
            return true;
        }else {
            return false;
        }
    }
}
