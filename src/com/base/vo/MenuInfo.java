package com.base.vo;

import java.util.ArrayList;
import java.util.List;

public class MenuInfo {

	private int menuId;
	private String menuName;
	private String menuImage;
	private String menuUrl;
	List<MenuInfo> childMenus = new ArrayList<MenuInfo>();

	public MenuInfo() {

	}

	public MenuInfo(String menuName, String menuUrl) {
		this.menuName = menuName;
		this.menuUrl = menuUrl;
	}

	public MenuInfo(int menuId, String menuName, String menuCode, String menuUrl) {
		this.menuId = menuId;
		this.menuName = menuName;
		this.menuImage = menuCode;
		this.menuUrl = menuUrl;
	}

	public void addChild(MenuInfo child) {
		this.childMenus.add(child);
	}

	public int getMenuId() {
		return menuId;
	}

	public void setMenuId(int menuId) {
		this.menuId = menuId;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuImage() {
		return menuImage;
	}

	public void setMenuImage(String menuImage) {
		this.menuImage = menuImage;
	}

	public String getMenuUrl() {
		return menuUrl;
	}

	public void setMenuUrl(String menuUrl) {
		this.menuUrl = menuUrl;
	}

	public List<MenuInfo> getChildMenus() {
		return childMenus;
	}

	public void setChildMenus(List<MenuInfo> childMenus) {
		this.childMenus = childMenus;
	}

}
