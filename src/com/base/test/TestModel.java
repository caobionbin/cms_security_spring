package com.base.test;

import java.util.List;

public class TestModel {
	private String name;
	private String url;
	private String ioc;
	private List<TestModel> child;

	public String getIoc() {
		return ioc;
	}

	public void setIoc(String ioc) {
		this.ioc = ioc;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<TestModel> getChild() {
		return child;
	}

	public void setChild(List<TestModel> child) {
		this.child = child;
	}

}
