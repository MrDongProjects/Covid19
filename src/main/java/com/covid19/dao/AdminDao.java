package com.covid19.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.covid19.entity.Admin;
import com.covid19.entity.AdminLog;


public interface AdminDao {
	
	/************************登录相关************************/
	Admin login(@Param("username")String username,@Param("password")String password);
	
	/************************Admin相关************************/
	int updAdmin(Admin admin);
	
	List<Admin> getAdminsList();
	
	Admin getAdminById(int id);

	Admin getAdminByUsername(String username);
	
	void insAdmin(Admin admin);
	
	void delAdminById(Long id);
	
	/************************AdminLog相关************************/
	List<AdminLog> getAdminLogsList();

	void insAdminLog(@Param("adminUsername")String username, @Param("loginIp")String loginIp, @Param("loginTime")Date loginTime);

	void updAdminLogByUsername(@Param("logoutTime")String logoutTime, @Param("isSafeExit")String isSafeExit, @Param("adminUsername")String adminUsername);
}
