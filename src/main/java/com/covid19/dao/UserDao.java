package com.covid19.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.covid19.entity.User;
import com.covid19.entity.UserSearch;

public interface UserDao {

	List<User> getAllUserList(UserSearch search);

	User getUserById(int id);

	void updateUserStatusById(@Param("id")int id, @Param("status")int status);

	void updateUser(User user);

	User selUserByUsername(String username);

	void insertUser(User user);

	void deleteUserById(int id);

}
