package com.aihc.scomrestapi.dtos;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class IngredientPerFoodDTO {
  private Integer id;
  private Integer amount;
}