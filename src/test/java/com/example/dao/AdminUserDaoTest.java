package com.example.dao;

import com.example.bean.AdminUser;
import com.example.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class AdminUserDaoTest {
    SqlSession sqlSession;
    @Test
    public void test() {
        try {
            sqlSession = MybatisUtils.getSqlSession();

            AdminUserDao adminUserDao = sqlSession.getMapper(AdminUserDao.class);
            List<AdminUser> adminUserList = adminUserDao.getAdminUserList();
            for (AdminUser adminUser : adminUserList) System.out.println(adminUser);
        }   catch (Exception e) {
            e.printStackTrace();
        }   finally {
            sqlSession.close();
        }
    }
}
