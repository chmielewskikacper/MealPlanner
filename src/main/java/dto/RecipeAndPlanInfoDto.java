package dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
public class RecipeAndPlanInfoDto {
    private  long numberOfPlans;
    private  long numberOfRecipes;
    private  List <String> mealNameList;
    private  List<String> dayList;
    private  String planName;
    private  List<String> recipeList;
    private String planDescription;

    public RecipeAndPlanInfoDto(long numberOfPlans, long numberOfRecipes) {
        this.numberOfPlans = numberOfPlans;
        this.numberOfRecipes = numberOfRecipes;
    }

    public RecipeAndPlanInfoDto(List<String> mealNameList, List<String> dayList, String planName, List<String> recipeList, String planDescription) {
        this.mealNameList = mealNameList;
        this.dayList = dayList;
        this.planName = planName;
        this.recipeList = recipeList;
        this.planDescription = planDescription;
    }

    public RecipeAndPlanInfoDto(long numberOfPlans, long numberOfRecipes, String planName, String planDescription) {
        this.numberOfPlans = numberOfPlans;
        this.numberOfRecipes = numberOfRecipes;
        this.planName = planName;
        this.planDescription = planDescription;
    }

}
