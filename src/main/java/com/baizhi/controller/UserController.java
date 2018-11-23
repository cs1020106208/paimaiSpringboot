package com.baizhi.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	
//	µÇÂ½
	@RequestMapping("/login")
	public String login(User user,String kaptcha,HttpSession session){
		String yzm=(String) session.getAttribute("kaptcha");
		user=userService.login(user);
		
		if(yzm.equalsIgnoreCase(kaptcha)){
			session.setAttribute("user",user);
			return "redirect:/auction/selectAllAuction";
			
		}
		return "fail";
	}
	
	
	//×¢²á
	@RequestMapping("/insertUser")
	public String insertUser(User user,String kaptcha,HttpSession session){

		String yzm=(String) session.getAttribute("kaptcha");
		if(yzm.equalsIgnoreCase(kaptcha)){
			userService.insertUser(user);
			return "regSuccess";
			
		}
		return "fail";
	}
	
}
