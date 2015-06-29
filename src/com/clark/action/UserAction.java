package com.clark.action;

import java.util.List;

import com.clark.domain.User;
import com.clark.service.UserService;
public class UserAction{
	
	private User user;
	private List<User> userList;
	private UserService userService = new UserService();
	private int pageIndex = 1;
	private int total;
	private String resultMsg;
	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public UserAction() {
		// TODO Auto-generated constructor stub
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
	}

	public String queryUsers(){
		userList = userService.queryJokeWithPage(pageIndex-1, 10);
		return "LIST";
	}
	
	public String getResultMsg() {
		return resultMsg;
	}

	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}

	public String addUser(){
		userService.addUser(user);
		setResultMsg("Save Success!");
		return "SUCCESS";
	}
	
	public String deleteUser(){
		userService.deleteUser(user);
		setResultMsg("Delete Success!");
		return "SUCCESS";
	}

}
