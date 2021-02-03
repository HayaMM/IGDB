package com.ga.igdb.dao;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.ga.igdb.model.Reviews;

public interface ReviewsDao extends CrudRepository<Reviews, Integer> {
	public Reviews findById(int id);

	//query to get the average rate from the review to the same game
	@Query( value="select avg(rate) from igdb.reviews where fk_game_id =:id\r\n"
			+ "", nativeQuery  = true)
	public	int getrank(@Param("id") int id);
	

}
