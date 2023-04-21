package com.Spring.TrainingStatusApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.Spring.TrainingStatusApp.bean.AdminLogin;

@Controller
public class AdminController {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@RequestMapping(value = "/Adminlogin", method = RequestMethod.POST)
	public String login(@ModelAttribute("adminlogin") AdminLogin adminlogin, ModelMap model) 
	{
	String query="SELECT * FROM tbllogin WHERE u_name=? AND password=?";
	List<AdminLogin> adminlogins=jdbcTemplate.query(query, new Object[] {adminlogin.getAdminuserId(),adminlogin.getAdminpassword()},new BeanPropertyRowMapper<>(AdminLogin.class));

    if (!adminlogins.isEmpty()) {
	System.out.println("4");
	return "admin";
	} else {
    model.put("errorMsg","Please Provide correct crendentials");
	System.out.println("5");
	return "login";
	
	}
   	
}}