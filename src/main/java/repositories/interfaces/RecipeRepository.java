package repositories.interfaces;

import entity.Recipe;

import java.util.List;

public interface RecipeRepository extends CRUDRepository<Recipe> {
    long numberOfRecipes(int adminId);

    List<Recipe> getRecipesAdmin(int adminId);

    Recipe getRecipe(int id);

    boolean checkAdminRecipe(int adminId, int recipeId);
}
