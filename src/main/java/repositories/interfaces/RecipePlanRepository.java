package repositories.interfaces;

import entity.Recipe;
import entity.RecipePlan;

import java.util.List;

public interface RecipePlanRepository extends CRUDRepository <RecipePlan> {

    List<RecipePlan> getRecipePlan(int planId);

    String getPlanNameFromRecipePlan(List<RecipePlan> recipePlanList);

    String getPlanDescriptionFromRecipePlan(List<RecipePlan> recipePlanList);

}
