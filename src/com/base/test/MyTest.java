package com.base.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.base.model.User;
import com.base.service.UserService;

/**
 * spring的单元测试
 * 
 * @author limingxing
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/config/spring.xml")
public class MyTest {
	@Autowired
	private UserService userService;

	@Test
	public void test() {
		List<User> list = userService.findall();
		for (User user : list) {
//			System.out.println("username=" + user.getUsername());
		}
	}

	@Test
	public void test1() {
		for (int i = 0; i < 100; i++) {

			User user = new User();
//			user.setUsername("limingxing"+i);
			user.setPassWord("limx"+i);

			System.out.println(userService.insertUser1(user));
			System.out.println(user.getId());
		}
	}

}
