package repositories.impl;

import entity.DayName;
import entity.Recipe;
import entity.RecipePlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import repositories.abstracts.AbstractCRUDRepository;
import repositories.interfaces.RecipePlanRepository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.time.LocalDateTime;
import java.util.List;

@Repository("RecipePlanRepositoryImpl")
public class RecipePlanRepositoryImpl extends AbstractCRUDRepository implements RecipePlanRepository {
    @Override
    @Transactional
    public RecipePlan create(RecipePlan entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public RecipePlan read(int entityId) {
        return entityManager.find(RecipePlan.class, entityId);
    }

    @Override
    @Transactional
    public void update(RecipePlan entity) {
        entityManager.merge(entity);
    }

    @Override
    @Transactional
    public void delete(RecipePlan entity) {
        entityManager.remove(entity);
    }

    @Override
    public List<RecipePlan> findAll() {
        Query query = entityManager.createQuery("SELECT d FROM DayName d");
        return query.getResultList();
    }

    @Override
    public List<RecipePlan> getRecipePlan(int planId) {
        Query query = entityManager.createQuery("SELECT p from RecipePlan p where p.plan.id=:planId").setParameter("planId",planId);
        return  query.getResultList();
    }

    @Override
    public String getPlanNameFromRecipePlan(List<RecipePlan> recipePlanList) {
        return recipePlanList.get(0).getPlan().getName();
    }

    @Override
    public String getPlanDescriptionFromRecipePlan(List<RecipePlan> recipePlanList) {
        return recipePlanList.get(0).getPlan().getDescription();
    }
}
