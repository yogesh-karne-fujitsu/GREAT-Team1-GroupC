package com.Spring.TrainingStatusApp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TraineeController 
{
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String traineepage() {
		return "login";
		}
	
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String EmployeeInfo(ModelMap model, @RequestParam String traineeuserId, @RequestParam String traineepassword) {
		if(traineeuserId.equals("admin") && traineepassword.equals("root")) {
		return "EmployeeInfo";
		}
	model.put("errorMsg", "Please provide valid credentials");
	return "login";

}
}

