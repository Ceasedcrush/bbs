package com.example.service;

import com.example.bean.User;
import com.example.dao.UserDao;
import com.example.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

public class UserService {
    //获取sqlSession对象
    SqlSession sqlSession;
    //获取UserDao接口的对象
    UserDao userDao;
    User u;
    public User login(String username, String password) {
        sqlSession= MybatisUtils.getSqlSession();
        userDao = sqlSession.getMapper(UserDao.class);
        u = userDao.login_info(username, password);

        sqlSession.close();

        return u;
    }

    public boolean register(User user) {
        sqlSession= MybatisUtils.getSqlSession();
        userDao = sqlSession.getMapper(UserDao.class);
        u = userDao.select_Username(user.getUsername());

        if (u == null) {
            userDao.add_User(user);
            
            sqlSession.commit();
        }

        sqlSession.close();
        
        return u == null;
    }
}
