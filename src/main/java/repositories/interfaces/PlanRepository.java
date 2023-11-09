package repositories.interfaces;

import entity.Plan;
import entity.RecipePlan;

import javax.persistence.Query;
import java.util.List;
import java.util.Optional;

public interface PlanRepository extends CRUDRepository<Plan> {
    long numberOfPlans(int adminId);

    List<Plan> getPlansFromAdmin(int adminId);

    List<Plan> getLastAddedPlan(int adminId);

    String getNamePlan(List<Plan> planList);

    String getDescriptionPlan(List<Plan> planList);

    Plan getPlan(int planId);

    boolean checkPlanAdmin(int adminId, int planId);
}
