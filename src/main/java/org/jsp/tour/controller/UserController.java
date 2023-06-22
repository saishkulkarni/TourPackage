package org.jsp.tour.controller;

import java.io.IOException;

import org.jsp.tour.dto.User;
import org.jsp.tour.helper.Login;
import org.jsp.tour.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	UserService user_service;

	@GetMapping("/user/contact")
	public ModelAndView contact(@RequestParam String email, @RequestParam String name) {
		ModelAndView view = new ModelAndView("/Home");
		view.addObject("pass", "Hello " + name + " We will get back to you on " + email);
		return view;
	}

	@PostMapping("user/signup")
	public ModelAndView signup(@ModelAttribute User user_dto) {
		return user_service.signup(user_dto);
	}
	

	@PostMapping("/user/login")
	public ModelAndView login(@ModelAttribute Login login, HttpSession session) throws IOException {
		return user_service.login(login,session);
	}
	
	@GetMapping("/user/tourpackages")
	public ModelAndView fetchall() {
		return user_service.fetchall();
	}
	
	@GetMapping("/user/book/{id}")
	public ModelAndView book(HttpSession session,@PathVariable int id)
	{
		return user_service.book(session,id);
	}
	
	@GetMapping("/user/history")
	public ModelAndView history(HttpSession session)
	{
		return user_service.history(session);
	}
	

}
