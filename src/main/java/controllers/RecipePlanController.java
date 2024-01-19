package controllers;


import dto.LoggedUserDto;
import entity.*;
import lombok.RequiredArgsConstructor;
import org.omg.CORBA.PRIVATE_MEMBER;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repositories.interfaces.*;
import service.LoginService;

@Controller
@RequiredArgsConstructor
public class RecipePlanController {

    private final RecipePlanRepository recipePlanRepository;

    private final LoginService loginService;

    private final DayNameRepository dayNameRepository;

    private final PlanRepository planRepository;

    private final RecipeRepository recipeRepository;

    @PostMapping("addRecipeToPlan")
    public String addRecipeToPlan(@RequestParam int choosePlan,
                                  @RequestParam String nameMeal,
                                  @RequestParam String displayOrderFromForm,
                                  @RequestParam int recipeFromForm,
                                  @RequestParam int dayNameId) {
        int displayOrder = Integer.parseInt(displayOrderFromForm);
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        DayName dayName = dayNameRepository.getDayName(dayNameId);
        if (planRepository.checkPlanAdmin(loggedUser.getId(),choosePlan) && recipeRepository.checkAdminRecipe(loggedUser.getId(),recipeFromForm)) {
            Plan plan = planRepository.getPlan(choosePlan);
            Recipe recipe = recipeRepository.getRecipe(recipeFromForm);
            RecipePlan recipePlan = new RecipePlan(nameMeal,displayOrder,recipe,dayName,plan);
            recipePlanRepository.create(recipePlan);
            return "redirect:/addRecipeToPlan";
        } else {
            return "";
        }
    }
}
