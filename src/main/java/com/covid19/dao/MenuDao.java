package com.covid19.dao;

import java.util.List;

import com.covid19.entity.Menu;

public interface MenuDao {

	Menu getMenuById(Long menuId);

	List<Menu> getAllMenus();

	void updataMenuByKey(Menu m);

	List<Menu> checkNameSameLevel(Menu menus);

	Menu getMenuByName(String name);

	void updataMenu(Menu menus);

	void insMenu(Menu menus);

	List<Menu> getMenuByParentId(Long menuId);

	void delMenuById(Long menuId);

}
