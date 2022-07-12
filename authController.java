package com.springboot.AutoGrade.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.AutoGrade.Model.Professor;
import com.springboot.AutoGrade.repo.ProfessorRepository;

@Controller
public class authController {

    @Autowired
    ProfessorRepository pRepository;

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @GetMapping("/addUser")
    public String addUser(Model model, @RequestParam("email") String email, Professor professor) {
        System.out.println(professor.toString());
        List<Professor> list = pRepository.findByEMAIL(email);
        if (list.size() != 0) {
            model.addAttribute("message", "Oops!  There is already a user registered with the email provided.");
        } else {
            pRepository.save(professor);
            model.addAttribute("message", "User has been successfully registered.");
        }
        return "signup";
    }
}
