package com.cos.light.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.light.model.myUsers;

public interface UserRepository extends JpaRepository<myUsers,Integer> {

	Optional<myUsers> findByUsername(String username);
}
