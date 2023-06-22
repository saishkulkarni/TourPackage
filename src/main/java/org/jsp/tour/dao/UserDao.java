package org.jsp.tour.dao;

import org.jsp.tour.dto.User;
import org.jsp.tour.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

	@Autowired
	UserRepository repository;

	public User save(User user) {
		return repository.save(user);
	}

	public User fetch(String email) {
		return repository.findByEmail(email);
	}

}
