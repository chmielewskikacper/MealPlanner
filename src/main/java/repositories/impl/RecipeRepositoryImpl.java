package repositories.impl;

import entity.DayName;
import entity.Recipe;
import org.springframework.stereotype.Repository;
import repositories.abstracts.AbstractCRUDRepository;
import repositories.interfaces.RecipeRepository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository("RecipeRepositoryImpl")
public class RecipeRepositoryImpl extends AbstractCRUDRepository implements RecipeRepository {

    @Override
    @Transactional
    public Recipe create(Recipe entity) {
        entityManager.persist(entity);
        return entity;
    }

    @Override
    public Recipe read(int entityId) {
        return entityManager.find(Recipe.class, entityId);
    }

    @Override
    @Transactional
    public void update(Recipe entity) {
        entityManager.merge(entity);
    }

    @Override
    @Transactional
    public void delete(Recipe entity) {
        entityManager.remove(entity);
    }

    @Override
    public List<Recipe> findAll() {
        Query query = entityManager.createQuery("SELECT r FROM Recipe r");
        return query.getResultList();
    }

    @Override
    public long numberOfRecipes(int adminId) {
        Query query = entityManager.createQuery("SELECT count (r) from Recipe r where r.admin.id =:adminId").setParameter("adminId", adminId);
        return (long) query.getSingleResult();
    }

    @Override
    public List<Recipe> getRecipesAdmin(int adminId) {
        Query query = entityManager.createQuery("SELECT  r from Recipe r where r.admin.id =:adminId").setParameter("adminId", adminId);
        return query.getResultList();
    }

    @Override
    public Recipe getRecipe(int id) {
        Query query = entityManager.createQuery("Select  r from Recipe r where  r.id =:id").setParameter("id",id);
        return (Recipe) query.getSingleResult();
    }

    @Override
    public boolean checkAdminRecipe(int adminId, int recipeId) {
        Query query = entityManager.createQuery("SELECT r FROM Recipe r where r.id =:recipeId and r.admin.id=:adminId").setParameter("recipeId",recipeId).setParameter("adminId",adminId).setMaxResults(1);
        if (query.getResultList().size() == 1) {
            return true;
        }else {
            return false;
        }
    }
}
