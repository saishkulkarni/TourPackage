package org.jsp.tour.service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.jsp.tour.dao.TourDao;
import org.jsp.tour.dto.TourPackage;
import org.jsp.tour.helper.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class Admin_Service {

	@Autowired
	TourDao tourDao;

	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView andView = new ModelAndView();
		if (login.getEmail().equals("admin@gmail.com") && login.getPassword().equals("admin")) {
			session.setAttribute("admin", "admin");
			andView.setViewName("/Admin_dashboard");
			andView.addObject("pass", "Login Success");
		} else {
			andView.setViewName("/admin_login");
			andView.addObject("fail", "Invalid Email or Password");
		}
		return andView;
	}

	public ModelAndView insert(TourPackage tour, MultipartFile photo) throws IOException {
		ModelAndView view = new ModelAndView();
		byte[] picture = null;
		if (photo != null) {
			InputStream inputStream = photo.getInputStream();
			picture = new byte[inputStream.available()];
			inputStream.read(picture);
		}

		tour.setImage(picture);
		tourDao.save(tour);

		view.addObject("pass", "Tour Package added Sucessfully");
		view.setViewName("/Admin_dashboard");
		return view;
	}

	public ModelAndView fetchall() {
		ModelAndView andView = new ModelAndView();
		List<TourPackage> list = tourDao.fetchall();
		if (list.isEmpty()) {
			andView.setViewName("/Admin_dashboard");
			andView.addObject("fail", "No list are available");
		} else {
			andView.setViewName("/view_all_package");
			andView.addObject("list", list);
		}
		return andView;
	}

	public ModelAndView update(TourPackage tourPackage) {
		ModelAndView view=new ModelAndView();
		TourPackage tourPackage2 =tourDao.findById(tourPackage.getId());
		if(tourPackage2==null)
		{
			view.setViewName("/Admin_dashboard");
			view.addObject("fail", "Sorry! Incorrect Id");
		}
		else {
			tourPackage.setImage(tourPackage2.getImage());
			tourDao.save(tourPackage);
			view.setViewName("/Admin_dashboard");
			view.addObject("pass", "Updated Successfully");
		}
		return view;
	}

	public ModelAndView delete(int id) {
		ModelAndView view=new ModelAndView();
		TourPackage tourPackage =tourDao.findById(id);
		if(tourPackage==null)
		{
			view.setViewName("/Admin_dashboard");
			view.addObject("fail", "Sorry! Incorrect Id");
		}
		else {
			tourDao.delete(id);
			view.setViewName("/Admin_dashboard");
			view.addObject("pass", "Deleted Successfully");
		}
		return view;
	}

}
