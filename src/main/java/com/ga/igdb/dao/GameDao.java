package com.ga.igdb.dao;

import org.springframework.data.repository.CrudRepository;
import com.ga.igdb.model.Game;

public interface GameDao extends CrudRepository<Game, Integer>{
	public Game findById(int id);
}
