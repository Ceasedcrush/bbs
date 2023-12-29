package com.example.service;

import com.example.dao.ReplyDao;
import com.example.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.Date;

public class ReplyService {
    SqlSession sqlSession;
    ReplyDao replyDao;

    public void reply(String replyContent, Date replyTime, int userId, int fid) {
        sqlSession = MybatisUtils.getSqlSession();
        replyDao = sqlSession.getMapper(ReplyDao.class);
        
        replyDao.reply(replyContent, replyTime, userId, fid);
        
        sqlSession.commit();
        
        sqlSession.close();
    }
}
