package com.base.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.base.model.Menu;
import com.base.model.Role;
import com.base.security.MySecurityMetadataSource;
import com.base.service.MenuService;
import com.base.service.RoleService;
import com.base.util.PageNavUtil;
import com.base.util.ResponseUtil;
import com.base.util.SearchConditionUtil;
import com.base.vo.PageData;

/**
 * 
 * 
 * 项目名称：base-spring-framework 类名称：RoleController 类描述： 角色管理工具 创建人：LiMingYi
 * 创建时间：2015年2月6日 下午4:16:24 修改人：LiMingYi 修改时间：2015年2月6日 下午4:16:24 修改备注：
 * 
 * @version
 * 
 */
@Controller
@RequestMapping("/role")
public class RoleController {

	@Autowired
	RoleService roleService;

	@Autowired
	MenuService menuService;
	@Autowired
	private MySecurityMetadataSource webSecurityMetadataSource;

	@RequestMapping("/role")
	public String role() {

		return "/views/limx/role";
	}

	@RequestMapping("/view")
	public String roleAdd(Model model, @RequestParam(value = "id") int id) {
		Role roleEntity = new Role();
		if (id == 0) {
			roleEntity.setState(1);
		} else {
			roleEntity = roleService.findRoleById(id);
		}
		model.addAttribute("roleEntity", roleEntity);
		return "ucenter/sys/roleEdit";
	}
	// @RequestMapping(value = "/roleAdd")
	// public @ResponseBody Object add(Role role, HttpServletRequest request,
	// HttpServletResponse response) {
	// role.setInsertTime(new Timestamp(System.currentTimeMillis()));
	// role.setState(1);
	// roleService.insertRole(role);
	// return ResponseUtil.success();
	// }

	@RequestMapping(value = "/update")
	public @ResponseBody Object update(@RequestParam(value = "id") int id, Role role, HttpServletRequest request,
			HttpServletResponse response) {
		role.setId(id);
		roleService.updateRole(role);
		return ResponseUtil.success();
	}

	/**
	 * 新增用户
	 * 
	 * @Title: updateState
	 * @Description: 修改角色状态
	 * @param id
	 *            roleId
	 * @param state
	 *            角色状态
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "/updateState")
	public @ResponseBody Object updateState(@RequestParam(value = "id") int id,
			@RequestParam(value = "state") int state, HttpServletRequest request, HttpServletResponse response) {
		Map<String, Object> tempMap = new HashMap<String, Object>();
		tempMap.put("id", id);
		tempMap.put("state", state);
		roleService.updateRoleState(tempMap);
		return true;
	}

	/**
	 * 删除某个角色
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "/delete")
	public @ResponseBody Object delete(@RequestParam(value = "id") int id) {
		roleService.deleteRole(id);
		// return ResponseUtil.success();
		return true;
	}

	/**
	 * 分配角色的菜单
	 * 
	 * @param model
	 * @param roleId
	 * @return
	 */
	@RequestMapping("/roleResourceSet")
	public String roleResourceSet(Model model, int roleId) {

		Role roleEntity = roleService.findRoleById(roleId);
		List<Menu> menus = menuService.findAllEffectiveMenusbyRoleId(roleId);
		StringBuilder menuIds = new StringBuilder();
		for (Menu menu : menus) {
			menuIds.append(menu.getId() + ",");
		}

		model.addAttribute("roleEntity", roleEntity);
		model.addAttribute("menuIds", menuIds.toString());

		return "ucenter/sys/roleResourceSet";
	}

	@RequestMapping(value = "/deleteBatch")
	public @ResponseBody Object deleteBatch(@RequestParam(value = "ids") String ids) {

		roleService.deleteRoles(ids);
		return ResponseUtil.success();
	}

	@RequestMapping("/list")
	public String roleList(Model model, Integer page, String roleName) {

		page = page == null ? 1 : page < 1 ? 1 : page;
		int pageSize = 10;
		PageData<Role> pageData = this.roleService.findRolePageList(roleName, page, pageSize);

		model.addAttribute("dataList", pageData.getPageData());
		model.addAttribute("totalCount", pageData.getTotalCount());
		model.addAttribute("totalPage", pageData.getTotalPage());
		model.addAttribute("currentPage", page);
		model.addAttribute("pageNav", PageNavUtil.getPageNavHtml(page.intValue(), 10, pageData.getTotalCount(), 15));

		return "ucenter/sys/roleList";
	}

	@RequestMapping(value = "/saveRole", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> saveRole(Model model, Role roleEntity) {
		String roleName = roleEntity.getRoleName();
		if (roleEntity == null || roleName.trim().equals("")) {
			return ResponseUtil.fail("角色名不能为空");
		}

		// 过滤非法字符
		roleEntity.setRoleName(roleName);
		if (roleService.findRoleById(roleEntity.getId()) != null) {
			roleService.updateRole(roleEntity);
		} else {
			this.roleService.insertRole(roleEntity);
		}
		return ResponseUtil.success();

	}

	@RequestMapping("/listall")
	public @ResponseBody Object listall(HttpServletRequest request) {
		Map<String, Object> searchCondionMap = SearchConditionUtil.packageSearchCondion(request);
		List<Role> listrole = roleService.findAllEffectiveRoles();
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		if (listrole != null && listrole.size() != 0) {
			for (Role role : listrole) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", role.getId());
				map.put("text", role.getDescription());
				list.add(map);
			}

		}
		return list;
	}

	/**
	 * 保存角色对应的菜单
	 * 
	 * @param model
	 * @param userInfo
	 * @return
	 */
	@RequestMapping(value = "/saveRoleResource", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> saveRoleResource(Model model, int roleId, String menuIds) {
		roleService.deleteRoleFunction(roleId);
		String[] mIds = menuIds.split(",");

		ArrayList<String> superList = new ArrayList<String>();
		ArrayList<Integer> parentList = new ArrayList<Integer>();
		if (mIds != null && mIds.length != 0) {
			ArrayList list = new ArrayList();
			for (int i = 0; i < mIds.length; i++) {
				if (!list.contains(mIds[i])) {
					list.add(mIds[i]);
					Menu menu = menuService.findMenu(Integer.parseInt(mIds[i]));
					if (menu.getParentId() == 0) {
						superList.add(String.valueOf(menu.getId()));
					} else {
						if (superList.contains(menu.getParentId())) {
							superList.remove(menu.getParentId());
						}
						parentList.add(menu.getParentId());
					}

					roleService.insertRoleFunction(roleId, Integer.parseInt(mIds[i]));
				}
			}
			if (null != parentList && parentList.size() > 0) {
				for (Integer parentId : parentList) {
					if (parentId != 0 && roleService.findRolesByMenuId(parentId).size()==0) {
						roleService.insertRoleFunction(roleId, parentId);
					}
				}
			}
			if (null != superList && superList.size() > 0) {
				for (String superParent : superList) {
					Integer sunIds = Integer.parseInt(superParent);
					List<Menu> menuList = menuService.findAllMenuList(sunIds);
					if (menuList != null && menuList.size() > 0) {
						for (Menu menuCom : menuList) {
							roleService.insertRoleFunction(roleId, menuCom.getId());

						}
					}
				}
			}
			webSecurityMetadataSource.reloadResource();
		}
		return ResponseUtil.success();
	}

}
