package com.example.dao;

import com.example.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    User login_info(@Param("username") String username, @Param("password") String password);

    User select_Username(String username);
    User add_User(User user);
}
