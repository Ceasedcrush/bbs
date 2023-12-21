package com.example.service;

import com.example.bean.AdminUser;
import com.example.dao.AdminUserDao;
import com.example.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

public class AdminUserService {
    //获得sqlSession对象
    SqlSession sqlSession;

    public AdminUser login(String username, String password) {
        sqlSession = MybatisUtils.getSqlSession();

        AdminUserDao adminUserDao = sqlSession.getMapper(AdminUserDao.class);

        AdminUser adminUser = adminUserDao.login_info(username, password);

        sqlSession.close();

        return adminUser;
    }
}
