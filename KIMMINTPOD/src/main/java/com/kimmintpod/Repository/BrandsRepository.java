package com.kimmintpod.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.kimmintpod.Entity.*;
@Repository
public interface BrandsRepository extends JpaRepository<Brands, Integer>{}
