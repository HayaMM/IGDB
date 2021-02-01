package com.ga.igdb.dao;

import org.springframework.data.repository.CrudRepository;
import com.ga.igdb.model.Reviews;

public interface ReviewsDao extends CrudRepository<Reviews, Integer> {
	public Reviews findById(int id);
	/* public Reviews findByGameId(int id); */
}
