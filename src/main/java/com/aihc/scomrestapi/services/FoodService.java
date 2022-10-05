package com.aihc.scomrestapi.services;

import com.aihc.scomrestapi.db.entities.Food;
import com.aihc.scomrestapi.db.entities.FoodIngredient;
import com.aihc.scomrestapi.db.entities.Image;
import com.aihc.scomrestapi.db.entities.Ingredient;
import com.aihc.scomrestapi.dtos.FoodCreationDTO;
import com.aihc.scomrestapi.repositories.FoodRepository;
import com.aihc.scomrestapi.repositories.ImageRepository;
import com.aihc.scomrestapi.repositories.IngredientRepository;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import org.springframework.stereotype.Service;

@Service
public class FoodService {

  private final FoodRepository foodRepository;
  private final ImageRepository imageRepository;
  private final IngredientRepository ingredientRepository;

  public FoodService(
      final FoodRepository foodRepository,
      final ImageRepository imageRepository,
      final IngredientRepository ingredientRepository) {
    this.foodRepository = foodRepository;
    this.imageRepository = imageRepository;
    this.ingredientRepository = ingredientRepository;
  }

  public Food save(Food food) {
    Optional<Image> imageOptional = imageRepository.findById(food.getImageId());
    if (imageOptional.isEmpty()) {
      throw new RuntimeException();
    }
    food.setImage(imageOptional.get());
    Food storedFood = foodRepository.save(food);
    storedFood.setUrlImage(food.getImage().getUrl());
    return storedFood;
  }

  public List<Food> findAll() {
    List<Food> foods = foodRepository.findAll();
    foods.forEach(food -> food.setUrlImage(food.getImage().getUrl()));
    return foods;
  }

  public Food saveFromDTO(final FoodCreationDTO foodDTO) {
    Optional<Image> imageOptional = imageRepository.findById(foodDTO.getImageId());
    if (imageOptional.isEmpty()) {
      throw new RuntimeException();
    }
    Food food = foodDTO.toEntity();
    food.setImage(imageOptional.get());

    food.getIngredients()
        .addAll(
            foodDTO.getIngredients().stream()
                .map(
                    i -> {
                      Ingredient ingredient = ingredientRepository.findById(i.getId()).get();
                      FoodIngredient nfi = new FoodIngredient();
                      nfi.setFood(food);
                      nfi.setIngredient(ingredient);
                      nfi.setAmount(i.getAmount());
                      return nfi;
                    })
                .collect(Collectors.toSet()));

    //      foodDTO.getIngredients().forEach(ingredient -> {
    //        FoodIngredient foodIngredient = new FoodIngredient();
    //        foodIngredient.setFood(food);
    //        foodIngredient.setIngredient(ingredientRepository.findById(ingredient.getId()).get());
    //        foodIngredient.setAmount(ingredient.getAmount());
    //        food.getIngredients().add(foodIngredient);
    //      });

    foodDTO
        .getNewIngredients()
        .forEach(
            newIngredient -> {
              Ingredient ingredient = newIngredient.toEntity();
              Ingredient savedIngredient = ingredientRepository.save(ingredient);
              FoodIngredient foodIngredient = new FoodIngredient();
              foodIngredient.setFood(food);
              foodIngredient.setIngredient(savedIngredient);
              foodIngredient.setAmount(newIngredient.getAmount());
              food.getIngredients().add(foodIngredient);
            });
    Food storedFood = foodRepository.save(food);
    storedFood.setUrlImage(food.getImage().getUrl());
    return storedFood;
  }
}
