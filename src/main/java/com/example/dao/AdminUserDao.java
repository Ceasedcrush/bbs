package com.example.dao;

import com.example.bean.AdminUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AdminUserDao {
    List<AdminUser> getAdminUserList();
    AdminUser login_info(@Param("username") String username, @Param("password") String password);

}
