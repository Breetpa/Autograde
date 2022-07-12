package com.springboot.AutoGrade.repo;

import org.springframework.data.repository.CrudRepository;

import com.springboot.AutoGrade.Model.Professor;

public interface ProfessorRepository extends CrudRepository<Professor, Integer> {

    
}
