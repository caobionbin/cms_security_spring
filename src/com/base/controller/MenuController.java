package com.base.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageInfo;
import com.base.model.Menu;
import com.base.service.MenuService;
import com.base.service.impl.UResourceService;
import com.base.tree.BaseModules;
import com.base.tree.Tree;
import com.base.tree.TreeMenu;
import com.base.tree.TreeUtil;
import com.base.util.PageNavUtil;
import com.base.util.PageUtil;
import com.base.util.ResponseUtil;
import com.base.util.UserUtil;
import com.base.vo.PageData;
import com.base.vo.TreeData;

/**
 * function action
 * 
 * 项目名称：base_spring_framework 类名称：FunctionController 类描述： function action
 * 创建人：huangxiong 创建时间：2015年2月6日 下午1:59:41 修改人：huangxiong 修改时间：2015年2月6日
 * 下午1:59:41 修改备注：
 * 
 * @version
 * 
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

	@Autowired
	MenuService menuService;

	@Autowired
	UResourceService resourceService;

	/**
	 * 新增功能
	 *
	 * @Title: add @Description: 新增功能 @param @param function
	 *         对象 @param @return @return Object 返回类型 @throws
	 */
	@RequestMapping(value = "/add")
	public @ResponseBody Object add(Menu menu) {

		menu.setState(1);
		menu.setInsertTime(new Date());
		if (menuService.findMenu(menu.getId()) != null) {
			menuService.updateMenu(menu);
		} else {
			menuService.insertMenu(menu);
		}
		return ResponseUtil.success();

	}

	/**
	 * 删除menu
	 *
	 * @Title: delete @Description: 删除function @param @param id
	 *         functionId @param @return @return Object 返回类型 @throws
	 */
	@RequestMapping(value = "/delMenu")
	public @ResponseBody Object delete(@RequestParam(value = "id") String id) {
		menuService.deleteMenu(Integer.valueOf(id));
		return true;
	}


	/**
	 * 
	 * @Title: mylist @Description: 获取当前用户的功能列表 @return Object 返回类型 @throws
	 */
	@RequestMapping("/mylist")
	public @ResponseBody Object mylist(Model model, HttpServletRequest request, HttpServletResponse response) {
		List<Menu> menuList = menuService
				.findAllEffectiveMenusbyLoginName(UserUtil.findSessionUser().getUsername().toString());
		return resourceService.loadMenuInfos(menuList);

	}


	/**
	 *
	 * @Title: listtree @Description: 获取所有模块的树形列表 @return Object 返回类型 @throws
	 */
	@RequestMapping("/listtree")
	public @ResponseBody List<TreeData> listtree() {
		List<TreeData> treeData = this.resourceService.getTreeData();

		return treeData;

	}


	/**
	 *
	 * @Title: list @Description: 所有功能列表 @param @param pageNum 当前页 @param
	 * @param pageSize
	 *            每页数量 @return Object 返回类型 @throws
	 */
	@RequestMapping("/list")
	public String menuList(Model model, Integer page, String menuName) {

		page = page == null ? 1 : page < 1 ? 1 : page;
		int pageSize = 10;
		PageData<Menu> pageData = this.menuService.findFunctionPageList(menuName, page, pageSize);

		model.addAttribute("dataList", pageData.getPageData());
		model.addAttribute("totalCount", pageData.getTotalCount());
		model.addAttribute("totalPage", pageData.getTotalPage());
		model.addAttribute("currentPage", page);
		model.addAttribute("pageNav", PageNavUtil.getPageNavHtml(page.intValue(), 10, pageData.getTotalCount(), 15));

		return "ucenter/sys/menuList";
	}

	

	/**
	 * 修改menu
	 *
	 * @Title: update @Description: 修改menu @param @param
	 *         function @param @return @return Object 返回类型 @throws
	 */
	@RequestMapping(value = "/view")
	public Object update(Model model, String menuId) {
		Menu menuEntity = new Menu();
		if (Integer.parseInt(menuId) == 0) {
			menuEntity.setDisplay(1);
		} else {
			menuEntity = menuService.findMenu(Integer.parseInt(menuId));
		}
		List<Menu> parentMenus = this.menuService.findAllMenuList(0);
		Menu rootMenu = new Menu();
		rootMenu.setId(0);
		rootMenu.setParentName("--顶级菜单--");
		parentMenus.add(0, rootMenu);

		model.addAttribute("menuEntity", menuEntity);
		model.addAttribute("parentMenus", parentMenus);

		return "ucenter/sys/menuEdit";
	}

}
