package com.aihc.scomrestapi.repositories;

import com.aihc.scomrestapi.db.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {}
