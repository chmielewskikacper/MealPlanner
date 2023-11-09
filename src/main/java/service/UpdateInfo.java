package service;

import dto.LoggedUserDto;
import dto.RecipeAndPlanInfoDto;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.context.annotation.SessionScope;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service("updateInfo")
@SessionScope
public class UpdateInfo {

    public void updateModelDash(Model model, LoggedUserDto dto, RecipeAndPlanInfoDto rpDto) {
                model.addAttribute("firstName", dto.getFirstName());
                model.addAttribute("lastName", dto.getLastName());
                model.addAttribute("numberOfPlans", rpDto.getNumberOfPlans());
                model.addAttribute("numberOfRecipes", rpDto.getNumberOfRecipes());
                model.addAttribute("mealNameList", rpDto.getMealNameList());
                model.addAttribute("dayList", rpDto.getDayList());
                model.addAttribute("planName", rpDto.getPlanName());
                model.addAttribute("recipeList", rpDto.getRecipeList());
    }

    public void updateModelDetailsPlan(Model model, LoggedUserDto dto, RecipeAndPlanInfoDto rpDto) {
        model.addAttribute("firstName", dto.getFirstName());
        model.addAttribute("lastName", dto.getLastName());
        model.addAttribute("mealNameList", rpDto.getMealNameList());
        model.addAttribute("dayList", rpDto.getDayList());
        model.addAttribute("planName", rpDto.getPlanName());
        model.addAttribute("recipeList", rpDto.getRecipeList());
    }

    public void updateModel(Model model, LoggedUserDto dto) {
        model.addAttribute("firstName", dto.getFirstName());
        model.addAttribute("lastName", dto.getLastName());
    }
}
