package org.jsp.tour.controller;

import java.io.IOException;

import org.jsp.tour.dto.TourPackage;
import org.jsp.tour.helper.Login;
import org.jsp.tour.service.Admin_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

	@Autowired
	Admin_Service admin_service;

	@GetMapping("/")
	public ModelAndView home_page() {
		ModelAndView andView = new ModelAndView("Home");
		return andView;
	}

	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView andView = new ModelAndView("Home");
		andView.addObject("pass", "Logged out sucessfully");
		return andView;
	}

	@PostMapping("/admin/login")
	public ModelAndView login(@ModelAttribute Login login, HttpSession session) {
		return admin_service.login(login, session);
	}

	@PostMapping("/admin/insert")
	public ModelAndView insert(@ModelAttribute TourPackage tour, @RequestParam MultipartFile photo) throws IOException {
		return admin_service.insert(tour, photo);
	}
	
	@GetMapping("/admin/fetchall")
	public ModelAndView fetchall() {
		return admin_service.fetchall();
	}
	
	@PostMapping("/admin/update")
	public ModelAndView update(@ModelAttribute TourPackage tourPackage)
	{
		return admin_service.update(tourPackage);
	}
	
	@PostMapping("/admin/delete")
	public ModelAndView delete(@RequestParam int id)
	{
		return admin_service.delete(id);
	}
}
