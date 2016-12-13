package com.base.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.base.dao.MenuDAO;
import com.base.model.Menu;
import com.base.model.User;
import com.base.service.MenuService;
import com.base.util.ConstantUtil;
import com.base.vo.FunctionTree;
import com.base.vo.PageData;

/**
 * function serviceImpl
 * 
 * 项目名称：base_spring_framework 类名称：FunctionServiceImpl 类描述： 创建人：huangx
 * 创建时间：2015年1月27日 下午7:17:30 修改人：huangx 修改时间：2015年1月27日 下午7:17:30 修改备注：
 * 
 * @version
 * 
 */
@Service("menuService")
public class MenuServiceImpl implements MenuService {

	@Autowired
	private MenuDAO menuDAO;

	public void insertMenu(Menu menu) {
		menuDAO.insertMenu(menu);

	}

	public void deleteMenu(int id) {

//		 存在孩子，不能删除
		 List<Menu> list = menuDAO.findMenubyParentId(id);
//		 删除关联表
		 menuDAO.deleteMenuRole(id);
//		 删除功能表
		 menuDAO.deleteMenu(id);

	}

	public void updateMenu(Menu menu) {

		menuDAO.updateMenu(menu);

	}

	public List<Menu> allParentFunction(int id) {
		// return functionDAO.findFunctionbyParentId(id);
		return null;

	}

	public void updateFunctionschecked(int roleId, String functionIds) {
		// 删除旧关系
		// functionDAO.deleteRoleFunction(roleId);
		// 建立新关系
		if (!"".equals(functionIds)) {
			String[] ids = functionIds.split(",");
			for (String functionId : ids) {
				if (Integer.valueOf(functionId).equals(0))
					continue;
				// functionDAO.insertFunctionRole(Integer.valueOf(functionId),
				// roleId);
			}

		}
	}

	public List<Menu> findAllEffectiveMenusbyLoginName(String loginName) {
		return menuDAO.findAllEffectiveMenusbyLoginName(loginName);
	}

	public List<Menu> findAllEffectiveMenusbyRoleId(Integer roleId) {
		 return menuDAO.findAllEffectiveMenusbyRoleId(roleId);
	}

	public PageInfo<Menu> findFunctionList(int pageNum, int pageSize) {
		// PageHelper.startPage(pageNum, pageSize);
		// List<Menu> list = functionDAO.findFunctionList();
		// PageInfo<Menu> page = new PageInfo<Menu>(list);
		// return page;
		return null;
	}

	public PageInfo<Menu> findFunctionList(Menu function, int pageNum, int pageSize) {
		// PageHelper.startPage(pageNum, pageSize);
		// List<Menu> list = functionDAO.findFunctionListByQuery(function);
		// PageInfo<Menu> page = new PageInfo<Menu>(list);
		// return page;
		return null;
	}

	public List<Integer> findEffectiveFunctionsbyAction(String action) {
		// return functionDAO.findEffectiveFunctionsbyAction(action);
		return null;
	}

	public List<FunctionTree> findFunctionTree(int roleId) {

		// List<FunctionTree> functionTreeList = new ArrayList<FunctionTree>();
		// List<Menu> effectiveFunctinList =
		// functionDAO.findEffectiveFunctinList();
		// List<Integer> checkedFunctionlist =
		// functionDAO.findFunctionTree(roleId);
		//
		// for (Menu func : effectiveFunctinList) {
		// FunctionTree funcTree = new FunctionTree();
		// funcTree.setId(func.getId());
		// funcTree.setpId(func.getParentId());
		// funcTree.setName(func.getFunctionName());
		// funcTree.setIcon(func.getIcon());
		// for (Integer checkedFunctionId : checkedFunctionlist) {
		// if (Integer.valueOf(func.getId()).equals(checkedFunctionId))
		// funcTree.setChecked(true);
		// }
		// functionTreeList.add(funcTree);
		// }
		//
		// return functionTreeList;
		return null;
	}

	public List<FunctionTree> findRootList(String id) {

		// List<FunctionTree> functionTreeList = new ArrayList<FunctionTree>();
		// List<Menu> allFunctionlist = functionDAO.findFunctionList();
		//
		// for (Menu func : allFunctionlist) {
		// FunctionTree funcTree = new FunctionTree();
		// funcTree.setId(func.getId());
		// funcTree.setpId(func.getParentId());
		// funcTree.setName(func.getFunctionName());
		// funcTree.setIcon(func.getIcon());
		// if (!StringUtils.isEmpty(id)) {
		// // 查询id的父ID
		// Menu function = functionDAO.findFunction(Integer.valueOf(id));
		// if (func.getId() == function.getParentId())
		// funcTree.setChecked(true);
		// if (func.getId() == function.getId())
		// continue;
		// }
		// functionTreeList.add(funcTree);
		// }
		//
		// return functionTreeList;
		return null;
	}

	public List<Menu> findFunctionbyParentIdAndFunctionName(Menu function) {

		// return functionDAO.findFunctionbyParentIdAndFunctionName(function);
		return null;
	}

	public void updateState(int id, int state) {
		state = state == ConstantUtil.OK ? ConstantUtil.FAIL : ConstantUtil.OK;

		// functionDAO.updateState(id, state);
	}

	public List<Menu> findEffectiveMenuList() {
		// TODO Auto-generated method stub
		 return menuDAO.findEffectiveMenuList();
	}

	public PageData<Menu> findFunctionPageList(String menuName, int pageNum, int pageSize) {
		Menu menu = new Menu();
		menu.setMenuName(menuName);
		PageData<Menu> pageData = new PageData<Menu>(pageNum, pageSize);
		List<Menu> list = menuDAO.findMenuListByQuery(menu);
		pageData.setTotalCount(list.size());
		pageData.setPageData(list);
		return pageData;
	}

	public List<Menu> findAllMenuList(int id) {

		return menuDAO.findMenubyParentId(id);
	}

	public Menu findMenu(int id) {
		return menuDAO.findMenu(id);
	}

}
