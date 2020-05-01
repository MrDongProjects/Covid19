package com.covid19.dao;

import java.util.List;

import com.covid19.entity.RoleMenu;

public interface RoleMenuDao {

	List<RoleMenu> selMenusByRoleId(Long roleId);

	void deleteMenusByRoleId(Long roleId);

	void insert(RoleMenu record);

	void deleteMenuByMenuId(Long menuId);

}
