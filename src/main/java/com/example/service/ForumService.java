package com.example.service;

import com.example.bean.Forum;
import com.example.dao.ForumDao;
import com.example.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.Date;

public class ForumService {
    SqlSession sqlSession;
    ForumDao forumDao;
    Forum _forum;
    public void post (String title, String content, Date createTime, int userId) {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);
        
        forumDao.post(title, content, createTime, userId);
        
        sqlSession.commit();
        
        sqlSession.close();
    }
}
