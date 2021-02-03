package com.ga.igdb.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.ga.igdb.model.Reviews;

public interface ReviewsDao extends CrudRepository<Reviews, Integer> {
	public Reviews findById(int id);

//	@Query(value = "select avg(rate) from igdb.reviews where fk_game_id = %id%")
//    public double total(int id);
	
}
