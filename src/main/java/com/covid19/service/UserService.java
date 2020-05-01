package com.covid19.service;

import com.covid19.entity.User;
import com.covid19.entity.UserSearch;
import com.covid19.utils.ResultUtil;

public interface UserService {

	ResultUtil getAllUserList(Integer page, Integer limit,UserSearch search);

	User getUserById(int id);

	ResultUtil updateUserStatusById(int id, int status);

	ResultUtil updateUser(User user);

	User selUserByUsername(String username);

	void insertUser(User user);

	ResultUtil deleteUserById(int id);

}
