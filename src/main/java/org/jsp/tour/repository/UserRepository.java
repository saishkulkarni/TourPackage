package org.jsp.tour.repository;

import org.jsp.tour.dto.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer>
{

	User findByEmail(String email);

}
