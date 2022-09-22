package com.aihc.scomrestapi.services;

import com.aihc.scomrestapi.db.entities.User;
import com.aihc.scomrestapi.repositories.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

  private final UserRepository userRepository;
  private final AuthenticationService authenticationService;

  public UserService(UserRepository userRepository, AuthenticationService authenticationService) {
    this.userRepository = userRepository;
    this.authenticationService = authenticationService;
  }

  public User save(User user) {
    return userRepository.save(user);
  }

  public List<User> findAll() {
    List<User> users = userRepository.findAll();
    users.forEach(user -> {
      user.setRole(authenticationService.getRoleByUserId(user.getId()));
    });
    return users;
  }
}
