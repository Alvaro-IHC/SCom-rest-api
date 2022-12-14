package com.aihc.scomrestapi.controllers;

import com.aihc.scomrestapi.db.entities.Chef;
import com.aihc.scomrestapi.services.ChefService;
import com.aihc.scomrestapi.utils.constants.EndPoint;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(EndPoint.CHEFS)
public class ChefController {

  private final ChefService chefService;

  public ChefController(ChefService chefService) {
    this.chefService = chefService;
  }

  @PostMapping
  public ResponseEntity<Chef> save(@RequestBody Chef chef) {
    return ResponseEntity.ok(chefService.save(chef));
  }

  @GetMapping("/{id}")
  public ResponseEntity<Chef> getById(@PathVariable Integer id) {
    return ResponseEntity.ok(chefService.findById(id));
  }

  @PutMapping("/{id}")
  public ResponseEntity<Chef> updateUser(@PathVariable Integer id, @RequestBody Chef chef) {
    return ResponseEntity.accepted().body(chefService.update(id, chef));
  }

  @DeleteMapping("/{id}")
  public ResponseEntity<Chef> deleteUser(@PathVariable Integer id) {
    return ResponseEntity.ok().body(chefService.deleteById(id));
  }
}
