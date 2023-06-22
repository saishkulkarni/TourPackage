package org.jsp.tour.dao;

import java.util.List;

import org.jsp.tour.dto.TourPackage;
import org.jsp.tour.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TourDao {

	@Autowired
	TourRepository tourRepository;

	public TourPackage save(TourPackage tourPackage) {
		return tourRepository.save(tourPackage);
	}

	public List<TourPackage> fetchall() {
		return tourRepository.findAll();
	}

	public TourPackage findById(int id) {
		return tourRepository.findById(id).orElse(null);
	}

	public void delete(int id) {
		tourRepository.deleteById(id);
	}
}
