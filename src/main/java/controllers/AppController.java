package controllers;

import dto.LoggedUserDto;
import dto.RecipeAndPlanInfoDto;
import entity.DayName;
import entity.Plan;
import entity.Recipe;
import entity.RecipePlan;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repositories.interfaces.DayNameRepository;
import repositories.interfaces.PlanRepository;
import repositories.interfaces.RecipePlanRepository;
import repositories.interfaces.RecipeRepository;
import service.LoginService;
import service.UpdateInfo;

import java.util.*;
import java.util.stream.Collectors;


@Controller
@RequiredArgsConstructor
public class AppController {


    private final UpdateInfo updateInfo;

    private final LoginService loginService;

    private final RecipeRepository recipeRepository;

    private final PlanRepository planRepository;

    private final RecipePlanRepository recipePlanRepository;

    private final DayNameRepository dayNameRepository;

    @GetMapping("/aboutApplication")
    public String aboutApplication() {
        return "/aboutApplication";
    }

    @GetMapping("/appDashBoard")
    public String appDashBoard(Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        long numberOfRecipes = recipeRepository.numberOfRecipes(loggedUser.getId());
        long numberOfPlans = planRepository.numberOfPlans(loggedUser.getId());
        List<Plan> lastPlan = planRepository.getLastAddedPlan(loggedUser.getId());
        if (lastPlan.isEmpty()) {
            RecipeAndPlanInfoDto rpDto = new RecipeAndPlanInfoDto(numberOfPlans, numberOfRecipes);
            updateInfo.updateModelDash(model, loggedUser, rpDto);
        } else {
            List<RecipePlan> planDetails = recipePlanRepository.getRecipePlan(lastPlan.get(0).getId());
            if (planDetails.size() != 0) {
                Plan plan = new Plan();
                String planName = planRepository.getNamePlan(lastPlan);
                String planDescription = planRepository.getDescriptionPlan(lastPlan);
                List dayList2 = planDetails.stream()
                        .map(dayRecipe -> dayRecipe.getDayName().getName())
                        .distinct()
                        .collect(Collectors.toList());

                List<String> recipeList = planDetails.stream()
                        .map(recipePlan -> recipePlan.getRecipe().getDescription())
                        .collect(Collectors.toList());

                List<String> mealNameList = planDetails.stream()
                        .map(mealName -> mealName.getMealName())
                        .collect(Collectors.toList());
                RecipeAndPlanInfoDto rpDto = new RecipeAndPlanInfoDto(numberOfPlans, numberOfRecipes, mealNameList, dayList2, planName, recipeList, planDescription);
                updateInfo.updateModelDash(model, loggedUser, rpDto);
            } else{
                Plan plan = new Plan();
                String planName = planRepository.getNamePlan(lastPlan);
                String planDescription = planRepository.getDescriptionPlan(lastPlan);
                RecipeAndPlanInfoDto rpDto = new RecipeAndPlanInfoDto(numberOfPlans, numberOfRecipes, planName, planDescription);
                updateInfo.updateModelDash(model, loggedUser, rpDto);
            }
    }
        return "/appDashBoard";
    }

    @GetMapping("/contact")
    public String contact() {
        return "/contact";
    }

    @GetMapping("/landingPage")
    public String landingPage() {
        return "/landingPage";
    }

    @GetMapping("/register")
    public String register() {
        return "/register";
    }

    @GetMapping("/login")
    public String loginForm() {
        return "/login";
    }

    @GetMapping("/appRecipes")
    public String appRecipes(Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        List<Recipe> recipeList = recipeRepository.getRecipesAdmin(loggedUser.getId());
        model.addAttribute("recipeList", recipeList);
        updateInfo.updateModel(model,loggedUser);
        return "/appRecipes";
    }

    @GetMapping("/addRecipes")
    public String getAddRecipes(Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        updateInfo.updateModel(model,loggedUser);
        return "/addRecipes";
    }


    @GetMapping("/recipeDetail")
    public String getRecipeDetails(@RequestParam int id,
                                   Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        Recipe recipe = recipeRepository.getRecipe(id);
        model.addAttribute("recipe", recipe);
        updateInfo.updateModel(model,loggedUser);
        return "/recipeDetails";
    }

    @GetMapping("/addPlan")
    public String getAddPlan(Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        updateInfo.updateModel(model,loggedUser);
        return "/addPlan";
    }

    @GetMapping("/planList")
    public String getPlanList(Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        List<Plan> planList = planRepository.getPlansFromAdmin(loggedUser.getId());
        model.addAttribute("plan",planList);
        updateInfo.updateModel(model,loggedUser);
        return "/planList";
    }


    @GetMapping("/planDetails")
    public String getDetailsPlan(@RequestParam int planId,
                                 Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        List<RecipePlan> planDetails = recipePlanRepository.getRecipePlan(planId);
        if (planDetails.size() != 0) {
            String planName = recipePlanRepository.getPlanNameFromRecipePlan(planDetails);
            String planDescription = recipePlanRepository.getPlanDescriptionFromRecipePlan(planDetails);

            List<String> dayList2 = planDetails.stream()
                    .map(dayRecipe -> dayRecipe.getDayName().getName())
                    .collect(Collectors.toList());
            Set<String> uniqueDays = new LinkedHashSet<>(dayList2);
            List<String> dayList = new ArrayList<>(uniqueDays);

            List<String> recipeList = planDetails.stream()
                    .map(recipePlan -> recipePlan.getRecipe().getDescription())
                    .collect(Collectors.toList());

            List<String> mealNameList = planDetails.stream()
                    .map(RecipePlan::getMealName)
                    .collect(Collectors.toList());

            RecipeAndPlanInfoDto rpDto = new RecipeAndPlanInfoDto(mealNameList,dayList, planName,recipeList,planDescription);
            updateInfo.updateModelDetailsPlan(model, loggedUser, rpDto);
        }
        return "/planDetails";
    }

    @GetMapping("/addRecipeToPlan")
    public String getAddRecipeToPlan(Model model) {
        LoggedUserDto loggedUser = loginService.getLoggedUser();
        List<Plan> planList = planRepository.getPlansFromAdmin(loggedUser.getId());
        List<Recipe> recipeList = recipeRepository.getRecipesAdmin(loggedUser.getId());
        List<DayName> dayNameList = dayNameRepository.findAll();
        model.addAttribute("planList",planList);
        model.addAttribute("recipeList",recipeList);
        model.addAttribute("dayList",dayNameList);
        updateInfo.updateModel(model,loggedUser);
        return "/addRecipeToPlan";
    }
}
