package com.springboot.AutoGrade.Controller;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springboot.AutoGrade.Model.Professor;
import com.springboot.AutoGrade.repo.ProfessorRepository;

@Controller
public class authController {

    @Autowired
    JdbcTemplate jdbc;

    @GetMapping("/signup")
    public String signup() {
        return "signup";
    }

    @PostMapping("/signup")
    public String signup(Model model, HttpSession session,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password) {
        try {
            jdbc.update(
                    String.format("insert into professor(name, email, password) values('%s', '%s', '%s')", name, email,
                            password));
            session.setAttribute("isAuthorization", true);
            session.setAttribute("userType", "professor");
            session.setAttribute("name", name);
            session.setAttribute("email", email);
        } catch (Exception e) {
            session.setAttribute("isAuthorization", true);
        }
        // Professor professor = new Professor();
        // professor.setName(name);
        // professor.setEmail(email);
        // professor.setPassword(password);
        // pRepository.save(professor);

        return "signup";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String login(Model model, HttpSession session,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("usertype") String usertype) {
        try {
            List<Map<String, Object>> list = jdbc
                    .queryForList(String.format("select * from professor where email='%s' and password='%s'",
                            email, password));
            if (list.size() > 0) {
                model.addAttribute("success", true);
                session.setAttribute("isAuthorization", true);
                session.setAttribute("userType", "professor");
                session.setAttribute("name", list.get(0).get("name"));
                session.setAttribute("email", list.get(0).get("email"));
            } else {
                session.setAttribute("isAuthorization", false);
            }
            // session.setAttribute("userType", "professor");
            // session.setAttribute("name", name);
            // session.setAttribute("email", email);
        } catch (Exception e) {
            session.setAttribute("isAuthorization", false);
        }
        // Professor professor = new Professor();
        // professor.setName(name);
        // professor.setEmail(email);
        // professor.setPassword(password);
        // pRepository.save(professor);

        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.setAttribute("isAuthorization", false);
        return "index";
    }
}
