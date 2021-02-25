package com.clothmart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.clothmart.model.Login;
import com.clothmart.model.User;
import com.clothmart.service.LoginService;
import com.clothmart.service.UserService;

@Controller
public class UserClothMartController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private LoginService loginService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@GetMapping("/register")
	public ModelAndView register()
	{
		return new ModelAndView("register", "form-data", new User());
	}
	
	@PostMapping("/saveUser")
	public ModelAndView saveUser(@ModelAttribute User user)
	{
		Login login = user.getLogin();
		login.setPassword(this.passwordEncoder.encode(login.getPassword()));
		login.setRole("ROLE_USER");
		this.loginService.insert(login);
		this.userService.insert(user);
		return new ModelAndView("redirect:/");
	}
	
	@GetMapping({"/", ""})
	public ModelAndView index()
	{
		return new ModelAndView("admin/test");
	}
	
	@GetMapping("/login")
	public ModelAndView login(@RequestParam(value = "error",required = false) String error,
	@RequestParam(value = "logout",	required = false) String logout) 
	{	
		if (error != null) 
		{
			return new ModelAndView("login","error", "Invalid Credentials provided.");
		}

		if (logout != null) 
		{
			return new ModelAndView("login", "message", "Logged out from ClothMart successfully.");
		}
		return new ModelAndView("login");
	}
	@GetMapping("/checkEmailAlreadyExists")
	public void checkEmailAlreadyExists(@RequestParam("email") String email, HttpServletResponse response) throws IOException
	{
		boolean isExists = this.userService.checkEmailAlreadyExists(email);
		PrintWriter out = response.getWriter();
		if(isExists)
		{
			out.println("The Entered Email Already Exists!!");
		}	
	}
	@GetMapping("/forgot-password")
	public ModelAndView forgotPassword()
	{
		return new ModelAndView("forgot-password");
	}
	
}
