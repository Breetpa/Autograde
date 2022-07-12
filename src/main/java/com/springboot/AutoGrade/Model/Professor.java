package com.springboot.AutoGrade.Model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import net.bytebuddy.dynamic.loading.ClassReloadingStrategy.Strategy;

@Entity
public class Professor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    private Date dob;
    private int module_coordinator;
    private int active;
    private int isPostingAllowed;

    private String email;
    private String password;

    public int getActive() {
        return active;
    }

    public Date getDob() {
        return dob;
    }

    public Integer getId() {
        return id;
    }

    public int getIsPostingAllowed() {
        return isPostingAllowed;
    }

    public int getModule_coordinator() {
        return module_coordinator;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setIsPostingAllowed(int isPostingAllowed) {
        this.isPostingAllowed = isPostingAllowed;
    }

    public void setModule_coordinator(int module_coordinator) {
        this.module_coordinator = module_coordinator;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        // TODO Auto-generated method stub
        return "User [professor id=" + id + ", name=" + name + ", email=" + email + "]";
    }
}