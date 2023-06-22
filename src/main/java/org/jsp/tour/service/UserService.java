package org.jsp.tour.service;

import java.util.ArrayList;
import java.util.List;

import org.jsp.tour.dao.TourDao;
import org.jsp.tour.dao.UserDao;
import org.jsp.tour.dto.TourPackage;
import org.jsp.tour.dto.User;
import org.jsp.tour.helper.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Service
public class UserService {
	@Autowired
	UserDao dao;

	@Autowired
	TourDao tourDao;

	public ModelAndView signup(User user_dto) {
		ModelAndView andView = new ModelAndView();
		dao.save(user_dto);
		andView.addObject("pass", "Account Created Successfully");
		andView.setViewName("/User_login");
		return andView;
	}

	public ModelAndView login(Login login, HttpSession session) {
		ModelAndView view = new ModelAndView();
		User dto = dao.fetch(login.getEmail());
		if (dto == null) {
			view.setViewName("/User_login");
			view.addObject("fail", "Email Wrong");
		} else {
			if (login.getPassword().equals(dto.getPassword())) {
				session.setAttribute("dto", dto);
				view.setViewName("/Home");
				view.addObject("pass ", "Login Success");
			} else {
				view.setViewName("/User_login");
				view.addObject("fail", "Invalid Password");
			}
		}
		return view;
	}

	public ModelAndView fetchall() {
		ModelAndView andView = new ModelAndView();
		List<TourPackage> list = tourDao.fetchall();
		if (list.isEmpty()) {
			andView.setViewName("/Home");
			andView.addObject("fail", "No packages are available");
		} else {
			andView.setViewName("/Packages");
			andView.addObject("list", list);
		}
		return andView;
	}

	public ModelAndView book(HttpSession session, int id) {
		ModelAndView view = new ModelAndView();
		User user = (User) session.getAttribute("dto");
		if (user == null) {
			view.setViewName("/Home");
			view.addObject("fail", "First Login to Book");
		} else {
			List<TourPackage> list = user.getList();
			if (list == null) {
				list = new ArrayList<>();
			}
			list.add(tourDao.findById(id));
			user.setList(list);

			try {
				dao.save(user);
				view.addObject("pass", "Package Purchase Success");
				view.setViewName("/Home");
			} catch (Exception e) {
				view.addObject("pass", "Package Already Purchased");
				view.setViewName("/Home");
			}

		}
		return view;
	}

	public ModelAndView history(HttpSession session) {
		ModelAndView view = new ModelAndView();
		User user = (User) session.getAttribute("dto");
		List<TourPackage> list = user.getList();
		if (list == null || list.isEmpty()) {
			view.addObject("pass", "No Package Purchased");
			view.setViewName("/Home");
		} else {
			view.setViewName("/history");
			view.addObject("list", list);
		}
		return view;
	}

}
