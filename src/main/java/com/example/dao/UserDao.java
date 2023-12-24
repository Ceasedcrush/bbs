package com.example.dao;

import com.example.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    public User login_info(@Param("username") String username, @Param("password") String password);
    public User select_Username(String username);
    public int add_User(User user);
    
}
