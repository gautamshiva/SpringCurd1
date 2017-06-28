package controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import services.CreateUserServiceImple;
import services.CreateUserServices;
import model.UserModel;

@Controller
public class CreateUserController {

	@Autowired
	public CreateUserServices createUserService;
	
	int MoNumber;
	
	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView createUser(HttpServletRequest request, HttpServletResponse response,
			  @ModelAttribute("user") UserModel user){
		
		createUserService.register(user);
		  return new ModelAndView("redirect:/ShowUserData");
		  }
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/ShowUserData")
	public ModelAndView showUserData(HttpServletRequest request, HttpServletResponse response){
		HashMap<Integer, UserModel> hashMap = (HashMap<Integer, UserModel>) createUserService.getUserValues();
		request.setAttribute("Data", hashMap); 
		return new ModelAndView("ShowUserData");
		  }
	
	@RequestMapping(value = "/delete/{number}")
	public ModelAndView deleteUserData(@PathVariable int number){
		createUserService.deleteUserDetails(number);
		
		return new ModelAndView("redirect:/ShowUserData");
		  }
	
	@RequestMapping(value = "/update/{number}")
	public ModelAndView getUserDataForUpdate(@PathVariable int number,HttpServletRequest request, HttpServletResponse response){
		MoNumber = number;
		UserModel user = createUserService.updateUserDetails(number);
		System.out.println("userValues : "+ user);
		request.setAttribute("userValues", user);
		return new ModelAndView("UpdateUserData");
		  }	
	
	@RequestMapping(value = "/update/saveUpdate", method = RequestMethod.POST)
	public ModelAndView updateUserData(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute UserModel user1){
		System.out.println("********-- : "+user1.getMobile()+"--"+user1.getStudentname()+"--"+user1.getRollno()+
				"--"+user1.getEmail()+"--"+user1.getCity());
		createUserService.register(user1);
		return new ModelAndView("redirect:/ShowUserData");
		  }
	
	@RequestMapping(value = "/index")
	public ModelAndView indexJsp(){
		
		return new ModelAndView("index");
		  }
	}

