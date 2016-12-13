package com.base.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.base.dao.RoleDAO;
import com.base.model.Role;
import com.base.model.User;
import com.base.service.RoleService;
import com.base.vo.PageData;

/**
 * role serviceImpl
 * 
 * 项目名称：base_spring_framework 类名称：RoleServiceImpl 类描述： 创建人：huangx
 * 创建时间：2015年1月27日 下午7:17:30 修改人：huangx 修改时间：2015年1月27日 下午7:17:30 修改备注：
 * 
 * @version
 * 
 */
@Service("roleService")
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDAO roleDAO;

	public void insertRole(Role role) {
		roleDAO.insertRole(role);
	}

	public void updateRole(Role role) {
		roleDAO.updateRole(role);
	}

	public void updateRoleState(Map<String, Object> tempMap) {
		roleDAO.updateRoleState(tempMap);
	}

	public void deleteRole(Integer roleId) {
		roleDAO.deleteMenuRole(roleId);
		roleDAO.deleteRole(roleId);
	}

	public void deleteRoles(String ids) {

		String[] roleIds = ids.split(",");
		for (String roleId : roleIds) {
			roleDAO.deleteMenuRole(Integer.valueOf(roleId));
			roleDAO.deleteRole(Integer.valueOf(roleId));
		}

	}

	public List<Role> findRolesByLoginName(String loginName) {

		return roleDAO.findRolesByDisplayName(loginName);

	}

	public List<Role> findAllEffectiveRoles() {

		List<Role> list = roleDAO.findAllEffectiveRoles();

		return list;
	}

	public List<Integer> findRolesByMenuId(Integer functionId) {
		return roleDAO.findRolesByMenuId(functionId);
	}

	public List<Role> findRolesByUserId(Integer userId) {
		return roleDAO.findRolesByUserId(userId);
	}

	public PageInfo<Role> findRoleList(Map<String, Object> tempMap, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		List<Role> list = roleDAO.findRoleList(tempMap);
		PageInfo<Role> page = new PageInfo<Role>(list);
		return page;
	}

	public Role findRoleById(Integer roleId) {
		Role role = roleDAO.findRoleById(roleId);
		return role;
	}

	public List<Role> findRoleByRoleName(String roleName) {
		List<Role> roleList = roleDAO.findRoleByRoleName(roleName);
		return roleList;
	}

	public void deleteRoleFunction(int roleId) {
		// TODO Auto-generated method stub
		roleDAO.deleteRoleMenu(roleId);
	}

	public void insertRoleFunction(int roleId, int menuId) {
		roleDAO.insertRoleMenu(roleId, menuId);
	}

	public PageData<Role> findRolePageList(String roleName, int pageNum, int pageSize) {
		PageData<Role> pageData = new PageData<Role>(pageNum, pageSize);
		List<Role> list = roleDAO.findRolePageList(roleName);
		pageData.setTotalCount(list.size());
		pageData.setPageData(list);
		return pageData;
	}

}
