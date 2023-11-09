package controllers;

import entity.Admin;
import entity.Recipe;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import repositories.interfaces.AdminRepository;
import repositories.interfaces.RecipeRepository;
import service.LoginService;

@Controller
@RequiredArgsConstructor
public class RecipeController {

    private final LoginService loginService;

    private final RecipeRepository recipeRepository;

    private final AdminRepository adminRepository;


    @PostMapping("/addRecipes")
    public String addRecipe(@RequestParam String name,
                            @RequestParam String description,
                            @RequestParam int preparationTime,
                            @RequestParam String ingredients,
                            @RequestParam String preparation) {
        Admin admin = adminRepository.findAdminByEmail(loginService.getLoggedUser().getEmail());
        Recipe recipe = new Recipe(name, ingredients, description, preparationTime, preparation, admin);
        recipeRepository.create(recipe);
        return "redirect:/appRecipes";
    }

}
