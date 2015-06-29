package com.clark.service;

import java.util.List;

import com.clark.dao.UserDAO;
import com.clark.domain.User;

public class UserService {
	private UserDAO userDao = new UserDAO(); 

	public UserService() {
		// TODO Auto-generated constructor stub
	}
	
	public int loginCheck(User user){
		User temp = userDao.findUserByName(user.getUsername());
		if(temp==null){
			return 1;			
		}else if(temp.getPassword().equals(user.getPassword())){
			return 0;
		}else 
			return 2;
	}
	
	public void addUser(User user){
		userDao.insertUser(user);
	}
	
	public List<User> queryJokeWithPage(int currentPage,int pageLength){
		List<User> userList = userDao.queryUserWithPage(currentPage*pageLength, pageLength);
		return userList;
	}
	
	public void deleteUser(User user){
		userDao.deleteUser(user);
	}

}
