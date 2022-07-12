package com.springboot.AutoGrade.repo;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.springboot.AutoGrade.Model.Professor;

public interface ProfessorRepository extends JpaRepository<Professor, Integer> {

    @Query("from User where email=?1")
    public List<Professor> findByEMAIL(String email);

    @Query("from User where email=?1 and user_pass=?2")
    public Professor findByEmailPassword(String email, String password);

}
