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

    //登录
    public User login(String username, String password) {
        sqlSession= MybatisUtils.getSqlSession();
        userDao = sqlSession.getMapper(UserDao.class);
        u = userDao.login_info(username, password);

        sqlSession.close();

        return u;
    }

    //判断账号是否已存在
    public boolean checkUser(String username) {
        sqlSession= MybatisUtils.getSqlSession();
        userDao = sqlSession.getMapper(UserDao.class);
        u = userDao.select_Username(username);

        return u == null;
    }

    //注册
    public void register(User user) {
        sqlSession= MybatisUtils.getSqlSession();
        userDao = sqlSession.getMapper(UserDao.class);

        userDao.add_User(user);

        sqlSession.commit();

        sqlSession.close();
    }

    //获取用户个人信息
    public User findUserById(int userId) {
        sqlSession= MybatisUtils.getSqlSession();
        userDao = sqlSession.getMapper(UserDao.class);

        u = userDao.findUserById(userId);

        sqlSession.close();

        return u;
    }
}
