package com.aihc.scomrestapi.dtos;

import lombok.Data;

@Data
public class LoginRequestDTO {
  
  private String usernameOrEmail;

  private String password;

}
