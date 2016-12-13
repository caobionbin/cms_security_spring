package com.base.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.base.model.Menu;

/**
 * function DAO
 * 
 * 项目名称：base_spring_framework 类名称：FunctionDAO 类描述： 创建人：huangx 创建时间：2015年1月27日
 * 下午7:09:58 修改人：huangx 修改时间：2015年1月27日 下午7:09:58 修改备注：
 * 
 * @version
 *
 */
public interface MenuDAO {

	/* ###############-------insert区域-------################## */
	/**
	 * 
	 * @Title: insertMenu @Description: 新增菜单 @param @param
	 * function @return @throws
	 */
	 public void insertMenu(Menu menu);

	/**
	 * 
	 * @Title: insertMenuRole @Description: 插入用户、角色关联 @param @param functionId
	 * 功能ID @param @param roleId 角色ID @return void 返回类型 @throws
	 */
	// public void insertMenuRole(@Param("menuId") int
	// functionId,@Param("roleId") int roleId);

	/**
	 * 
	 * @Title: deleteMenu @Description: 删除功能表 @param @param id id @return void
	 * 返回类型 @throws
	 */
	/* ###############-------delete区域-------################## */
	 public void deleteMenu(int id);

	/**
	 * 
	 * @Title: deleteMenuRole @Description: 删除关联表 @param @param functionId
	 * 功能ID @return void 返回类型 @throws
	 */
	 public void deleteMenuRole(int menuId);

	/**
	 * 
	 * @Title: deleteRoleMenu @Description: 删除关联表 @param: roleId 角色id @return
	 * void 返回类型 @throws
	 */
	 public void deleteRoleMenu(int roleId);

	/* ###############-------delete区域-------################## */

	/* ###############-------update区域-------################## */
	/**
	 * 修改function状态 @Title: updateState @Description: 修改function状态 @param @param
	 * id functionId @param @param state 状态 @return void 返回类型 @throws
	 */
	// public void updateState(@Param("id")int id, @Param("state")int state);

	/**
	 * 修改menu @Title: updateMenu @Description: 修改 @param @param function @return
	 * void 返回类型 @throws
	 */
	 public void updateMenu(Menu menu);

	/* ###############-------update区域-------################## */

	/* ###############-------find区域-------################## */

	/**
	 * 加载menu @Title: findMenu @Description: 加载menu @param @param
	 * id @param @return @return menu 返回类型 @throws
	 */
	 public Menu findMenu(int id);

	/**
	 * @Title: findAllEffectiveMenusbyRoleId @Description:
	 * 根据roleId查询有效的menus @param @param roleId @param @return 设定文件 @return
	 * List<Menu> 返回类型 @throws
	 */
	public List<Menu> findAllEffectiveMenusbyRoleId(Integer roleId);

	/**
	 * 
	 * @Title: findEffectiveMenuList @Description: 查询所有有效的功能权限列表 @return
	 * List<Menu> 有效的功能权限列表功能列表 @throws
	 */
	 public List<Menu> findEffectiveMenuList();

	/**
	 * 
	 * @Title: findAllEffectiveMenusbyLoginName @Description:
	 * 查询当前用户的权限 @param @param loginName 登陆名 @param @return 设定文件 @return
	 * List<Menu> 返回类型 @throws
	 */
	public List<Menu> findAllEffectiveMenusbyLoginName(String loginName);

	/**
	 * 
	 * @Title: findMenuList @Description: 查询所有功能模块 @param @return 设定文件 @return
	 * List<Menu> 功能列表 @throws
	 */
	 public List<Menu> findMenuList();

	/**
	 * 
	 * @Title: findEffectiveMenusbyUrl @Description: 查询functionId @param @param
	 * action action请求 @param @return 设定文件 @return List<Integer> 返回类型 @throws
	 */
	// public List<Integer> findEffectiveMenusbyUrl(String url);

	/**
	 * 
	 * @Title: findMenuListByfNameAndAction @Description: 条件查询function
	 * list @param @param function @param @return 设定文件 @return List<Menu>
	 * 返回类型 @throws
	 */
	 public List<Menu> findMenuListByQuery(Menu menu);

	/**
	 * 
	 * @Title: findFunctionTee @Description: 查询角色下对应的功能 @param：roleId @return
	 * List<FunctionTree> 返回类型 @throws
	 */
	// public List<Integer> findMenuTree(int roleId);

	/**
	 * 
	 * @Title: findMenubyParentId @Description: 查询孩子节点 @param @param
	 * id @param @return 设定文件 @return List<Menu> 返回类型 @throws
	 */
	 public List<Menu> findMenubyParentId(int id);

	/**
	 * 
	 * @Title: findFunctionbyParentIdAndFunctionName @Description:
	 * 根据functionName和parentId查询列表 @param @param function @param @return @return
	 * List<Function> 返回类型 @throws
	 */
	// public List<Menu> findFunctionbyParentIdAndFunctionName(Menu function);

	/* ###############-------find区域-------################## */

}