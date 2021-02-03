package com.ga.igdb.dao;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.ga.igdb.model.Game;

public interface GameDao extends CrudRepository<Game, Integer>{
	public Game findById(int id);
	
	//query to update the game rank depende on the reviews rate
	@Modifying
	@Query( value="UPDATE `game`\r\n"
			+ "SET`rank_num` =:rank\r\n"
			+ "WHERE `id` =:id", nativeQuery  = true)
	public	int setrank(@Param("id") int id, int rank);
}
