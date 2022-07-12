package com.springboot.AutoGrade.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    @GetMapping({ "/", "home" })
    public String home(Model model,
            @RequestParam(value = "name", required = false, defaultValue = "world") String name) {
        return "index";
    }
}
