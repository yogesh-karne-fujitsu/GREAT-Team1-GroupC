package com.Spring.TrainingStatusApp.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Spring.TrainingStatusApp.bean.Trainee;
import com.Spring.TrainingStatusApp.bean.TraineeLogin;
import com.Spring.TrainingStatusApp.service.TraineeService;
@Controller
public class TraineeController 
{
	@Autowired
	TraineeService TraineeService;
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String traineepage() {
		return "login";
		}
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@RequestMapping(value = "/traineelogin", method = RequestMethod.POST)
	public String login(@ModelAttribute("traineelogin") TraineeLogin traineelogin, ModelMap model) 
	{
	String query="SELECT * FROM tbltraineelogin WHERE t_name=? AND t_pass=?";
	List<TraineeLogin> traineelogins=jdbcTemplate.query(query, new Object[] {traineelogin.getTraineeuserId(),traineelogin.getTraineepassword()},new BeanPropertyRowMapper<>(TraineeLogin.class));

    if (!traineelogins.isEmpty()) {
	System.out.println("Accessed trainee successfully");
	return "trainee";
	} else {
    model.put("errorMsg","Please Provide correct credentials");
	System.out.println("Invalid credentials proceeded to login");
	return "login";
		}
	}
	
	@RequestMapping(value = "/welcome", method = RequestMethod.POST)
	public String registerUser(@Validated @ModelAttribute(name = "trainee") Trainee trainee, BindingResult result, ModelMap model,
			@RequestParam("emSrn") MultipartFile mailScrn, @RequestParam("sabaSrn") MultipartFile sabaScrn,
			@RequestParam("testScrn") MultipartFile testScrn) throws IOException {
		System.out.println("Control Handling image1");
		System.out.println("Control Handling image2");
		if (result.hasErrors()) {
			return "trainee";
		}
		TraineeService.createNewTrainee(trainee, mailScrn, sabaScrn, testScrn);
		model.put("successMsg", "Submitted Sucessfully..!");
		return "trainee";
	}	
	
	
	@RequestMapping(value = "/logoutToTrainee", method = RequestMethod.GET)
	public String adminpage1() {
		System.out.println("logged-out");
		return "login";
	}
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq() {
		System.out.println("FAQ Page");
		return "FAQ";
	}
}
