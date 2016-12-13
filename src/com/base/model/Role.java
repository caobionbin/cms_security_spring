package com.base.model;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 角色表
 * 
 * 项目名称：base_spring_framework 类名称：Role 类描述： 创建人：huangx 创建时间：2015年1月27日 下午6:42:22
 * 修改人：huangx 修改时间：2015年1月27日 下午6:42:22 修改备注：
 * 
 * 就四个角色   1\最高 2、财务  3、教务  4、前台 
 * @version 1.0
 * 
 */
public class Role {

	private Integer id;
	private String roleName;// 角色名称
	private Integer state;// 状态，0=冻结，1=正常
	private Date insertTime;// 插入时间
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Date getInsertTime() {
		return insertTime;
	}

	public void setInsertTime(Date insertTime) {
		this.insertTime = insertTime;
	}

}
