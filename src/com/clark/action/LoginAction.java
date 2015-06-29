package com.clark.action;

import com.clark.domain.User;
import com.clark.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	private int userid;
	private String username;
	private String password;
	private UserService userService = new UserService();
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LoginAction() {
		// TODO Auto-generated constructor stub
	}
	
	public String doUserLogin(){
		User user =new User();
		user.setUsername(username);
		user.setPassword(password);
		int flag = userService.loginCheck(user);
		if(flag==1){
			addFieldError("username", "用户名不正确！");
			return LOGIN;
		}else if(flag==2){
			addFieldError("password", "密码不正确！");
			return LOGIN;
		}else{
			ActionContext.getContext().getSession()
		      .put("userName", getUsername());
			if(userid==10001)
				return "ADMIN";
			}
		return SUCCESS;
	}

}
