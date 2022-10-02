package com.aihc.scomrestapi.controllers;

import com.aihc.scomrestapi.db.entities.Customer;
import com.aihc.scomrestapi.services.CustomerService;
import com.aihc.scomrestapi.utils.constants.EndPoint;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = EndPoint.CUSTOMERS)
public class CustomerController {

  private final CustomerService customerService;

  public CustomerController(CustomerService customerService) {
    this.customerService = customerService;
  }

  @PostMapping
  public ResponseEntity<Customer> save(@RequestBody Customer customer) {
    return ResponseEntity.ok(customerService.save(customer));
  }

  @GetMapping("/{id}")
  public ResponseEntity<Customer> getById(@PathVariable Integer id) {
    return ResponseEntity.ok(customerService.findById(id));
  }

  @PutMapping("/{id}")
  public ResponseEntity<Customer> updateUser(
      @PathVariable Integer id, @RequestBody Customer customer) {
    return ResponseEntity.accepted().body(customerService.update(id, customer));
  }

  @DeleteMapping("/{id}")
  public ResponseEntity<Customer> deleteUser(@PathVariable Integer id) {
    return ResponseEntity.ok().body(customerService.deleteById(id));
  }
}
