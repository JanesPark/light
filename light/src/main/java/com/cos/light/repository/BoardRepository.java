package com.cos.light.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.light.model.myBoards;

public interface BoardRepository extends JpaRepository<myBoards, Integer> {

}
