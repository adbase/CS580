package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Children;
import com.entity.User;

public class UserDaoImpl implements UserDao  {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public User getUser(String id) {

		String hql = "from User u where u.id=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);

		return (User) query.uniqueResult();
	}

	@Override
	public List<User> getAllUser() {

		String hql = "from User";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return query.list();
	}

	@Override
	public void addUser(User user) {
		sessionFactory.getCurrentSession().save(user);
	}

	@Override
	public boolean delUser(String id) {

		String hql = "delete User u where u.id = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);

		return (query.executeUpdate() > 0);
	}

	@Override
	public boolean updateUser(User user) {

		String hql = "update User u set u.userName = ?,u.age=? where u.id = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, user.getUserName());
		query.setString(1, user.getAge());
		query.setString(2, user.getId());

		return (query.executeUpdate() > 0);
	}

	@Override
	public void addChildren(List<Children> children) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		for(int i=0;i<children.size();i++){
			Children temp = children.get(i);
			session.save(temp);
			if ( i % 10 == 0 ){
				session.flush();          
				session.clear();
			}
		}
	}
}
