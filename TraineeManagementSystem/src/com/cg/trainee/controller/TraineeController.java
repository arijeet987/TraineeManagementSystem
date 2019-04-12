package com.cg.trainee.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.cg.trainee.bean.Trainee;
import com.cg.trainee.exception.TraineeException;
import com.cg.trainee.service.ITraineeService;





@Controller
public class TraineeController {
	
	@Autowired
	private ITraineeService traineeService;

	
	public ITraineeService getTraineeService() {
		return traineeService;
	}

	public void setTraineeService(ITraineeService traineeService) {
		this.traineeService = traineeService;
	}

	@RequestMapping("/showHomePage")
	public String showHomePage() {
		
		return "login";
	}
	
	@RequestMapping("/validateLogin")
	public String validateLogin(@RequestParam("username") String username,@RequestParam("password") String password)
		{
		if("admin".equals(username) && "java".equals(password))
		
			return "showTraineeManagementPage";
			
		return "login";
		
		}
	@RequestMapping("/showTraineeManagementPage")
	public String showTraineeManagementPage() {
		
		return "showTraineeManagementPage";
	}
	
	@RequestMapping("/addTrainee")
	public ModelAndView showTrainee() {
		
		Trainee trainee=new Trainee();
		
		return new ModelAndView("addTrainee", "trainee", trainee);
	}

	
	@RequestMapping("/Addsuccess")
	public ModelAndView addTraineeSuccessFully(@ModelAttribute("trainee") @Valid Trainee trainee,
			BindingResult result) 
	{
	
	ModelAndView mv = null;

	if (!result.hasErrors()) 
	{
			
		trainee = traineeService.addTrainee(trainee);
		mv = new ModelAndView("success");
		mv.addObject("traineeId",trainee.getTraineeId());
		
	} 
	else {
		mv = new ModelAndView("addTrainee", "trainee", trainee);
	}

	return mv;
	}
	@RequestMapping("/showTrainee")
	public ModelAndView showViewAllDonations() {

		ModelAndView mv = new ModelAndView();

		List<Trainee> list = traineeService.getAllTraineeDetails();
		if (list.isEmpty()) {
			String msg = "There are no Trainee";
			mv.setViewName("myError");
			mv.addObject("msg", msg);
		} else {
			mv.setViewName("AllTraineeDetails");
			// Add the attribute to the model
			mv.addObject("list",list);
		}
		return mv;
	}
	@RequestMapping("/ShowDeleteTraineeForm")
	public String deleteTraineeForm() {
		return "deleteTraineeForm";
	}
	@RequestMapping("/deleteTrainee")
	public ModelAndView deleteTrainee(@RequestParam("traineeId") int traineeId){
		ModelAndView mv = null;
		
				if(traineeService.deleteTraineeById(traineeId)) 
				mv = new ModelAndView("showTraineeManagementPage", "message", "Operation is successfully done!!!!"); 
				
				else
				mv = new ModelAndView("deleteTraineeForm", "message", "Please, Enter a valid Id");
				return mv;
			}
		
	
	
	@RequestMapping("/showSearchTraineeForm")
	public String searchTraineeForm() {
		return "searchTraineeForm";
	}
	
	@RequestMapping("/searchTrainee")
	public ModelAndView searchTrainee(@RequestParam("traineeId") int traineeId) {
		ModelAndView mv = null;
		Trainee trainee = traineeService.retriveoneTraineeById(traineeId);
		if(trainee!=null) {
			mv = new ModelAndView("showTraineePage", "trainee", trainee); 
		}
		else
		mv = new ModelAndView("searchTraineeForm", "message", "Please, Enter a valid Id or the id is not present");
		
		return mv;
	}
}

