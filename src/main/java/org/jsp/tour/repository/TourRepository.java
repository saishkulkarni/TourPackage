package org.jsp.tour.repository;

import org.jsp.tour.dto.TourPackage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TourRepository extends JpaRepository<TourPackage, Integer> {

}
