package com.ga.igdb.dao;

import org.springframework.data.repository.CrudRepository;

import com.ga.igdb.model.User;


public interface UserDao extends CrudRepository<User, Integer>{
	public User findByEmailAddress(String emailAddress);

}
