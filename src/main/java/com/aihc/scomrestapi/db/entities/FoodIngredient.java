package com.aihc.scomrestapi.db.entities;

import com.aihc.scomrestapi.db.entities.keys.FoodIngredientKey;
import com.aihc.scomrestapi.utils.constants.TableConstants;
import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = TableConstants.FOOD_INGREDIENT_RELATIONSHIP)
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class FoodIngredient {

  @JsonIgnore @EmbeddedId private FoodIngredientKey id = new FoodIngredientKey();

  @ManyToOne
  @MapsId("foodId")
  @JoinColumn(name = TableConstants.FOOD_AS_FOREIGN)
  @JsonIgnore
  private Food food;

  @ManyToOne
  @MapsId("ingredientId")
  @JoinColumn(name = TableConstants.INGREDIENT_AS_FOREIGN)
  private Ingredient ingredient;

  @Column(name = TableConstants.AMOUNT)
  private Integer amount;
}
