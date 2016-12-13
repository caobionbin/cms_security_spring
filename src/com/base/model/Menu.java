package com.base.model;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 
 * 项目名称：base_spring_framework 类名称：Function 类描述： 创建人：huangx 创建时间：2015年1月27日
 * 下午6:38:12 修改人：huangx 修改时间：2015年1月27日 下午6:38:12 修改备注：
 * 
 * @version 1.0
 * 
 */
public class Menu {

	private int id;
	private int parentId;// 父Id
	private String menuName;// 功能名称
	private int state;// 状态，0=冻结，1=正常
	private int display;// 是否显示，0=不显示，1=显示
	private String icon;// 图标
	private String desc;// 排序
	private Date insertTime;// 插入时间

	private String ParentName;
	private String url;// 请求路径

	public String getParentName() {
		return ParentName;
	}

	public void setParentName(String parentName) {
		ParentName = parentName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getInsertTime() {
		return insertTime;
	}

	public void setInsertTime(Date insertTime) {
		this.insertTime = insertTime;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public int getDisplay() {
		return display;
	}

	public void setDisplay(int display) {
		this.display = display;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

}
