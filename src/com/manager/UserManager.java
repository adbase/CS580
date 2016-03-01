package com.manager;

import java.util.List;

import com.entity.Children;
import com.entity.User;

public interface  UserManager {
	public User getUser(String id);  
    
    public List<User> getAllUser();  
      
    public void addUser(User user);  
      
    public boolean delUser(String id);  
      
    public boolean updateUser(User user);  
    
    public void addChildren(List<Children> children);
}
