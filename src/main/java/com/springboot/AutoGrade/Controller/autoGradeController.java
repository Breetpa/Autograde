package com.springboot.AutoGrade.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class autoGradeController {
    @Autowired
    JdbcTemplate jdbc;

    @GetMapping("/presentProblem")
    public String craeatProblem() {
        return "presentProblem";
    }

    @GetMapping("/submitAssignment")
    public String submitAssignment() {
        return "submitAssignment";
    }

}