package com.clark.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.clark.domain.User;

public class UserDAO {
	private Session session = com.clark.util.HibernateUtil.getSessionFactory().getCurrentSession();
	public UserDAO() {
		// TODO Auto-generated constructor stub
		
	}
	
	public void insertUser(User user){
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
	}
	
	public void deleteUser(User user){
		session.beginTransaction();
		user = (User) session.get(User.class, user.getUserid());
		session.delete(user);
		session.getTransaction().commit();
	}
	
	public User findUserByName(String userName){
		session.beginTransaction();
		User user_back = null;
		Query query = session.createQuery("from User u where u.username =:userName");
		query.setString("userName", userName);
		query.setMaxResults(1);
		user_back = (User) query.uniqueResult();
		session.getTransaction().commit();
		return user_back;
	}
	
	public List<User> queryUserWithPage(int start,int length){
		session.beginTransaction();
		List<User> userList = new ArrayList<User>();
		Query query = session.createQuery("from User");
		query.setFirstResult(start);
		query.setMaxResults(length);
		userList = query.list();
		session.getTransaction().commit();
		return userList;
	}

}
