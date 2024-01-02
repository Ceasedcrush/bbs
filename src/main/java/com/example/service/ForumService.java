package com.example.service;

import com.example.bean.Forum;
import com.example.dao.ForumDao;
import com.example.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;

import java.util.Date;
import java.util.List;

public class ForumService {
    SqlSession sqlSession;
    ForumDao forumDao;

    //获取帖子列表
    public List<Forum> getPostList() {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);

        List<Forum> postList =  forumDao.getPostList();

        sqlSession.close();

        return  postList;
    }

    //发帖
    public void post (String title, String content, Date createTime, int userId) {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);
        
        forumDao.post(title, content, createTime, userId);
        
        sqlSession.commit();
        
        sqlSession.close();
    }

    //获取帖子信息
    public Forum post_info(int fid) {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);

        Forum post = forumDao.post_info(fid);

        sqlSession.close();

        return post;
    }

    //获取精选贴
    public List<Forum> getSelectedPostList() {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);

        List<Forum> selectedPostList =  forumDao.getSelectedPostList();

        sqlSession.close();

        return selectedPostList;
    }

    //点赞
    public boolean like(int fid) {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);

        int cnt = forumDao.like(fid);

        sqlSession.commit();
        sqlSession.close();

        return cnt != 0;
    }

    //更新评论数
    public void replyTot(int fid) {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);

        forumDao.replyTot(fid);

        sqlSession.commit();
        sqlSession.close();
    }

    //获取某个用户的所有帖子
    public List<Forum> getUserPostList(int id) {
        sqlSession = MybatisUtils.getSqlSession();
        forumDao = sqlSession.getMapper(ForumDao.class);

        List<Forum> userPostList = forumDao.getUserPostList(id);

        sqlSession.close();

        return userPostList;
    }

}
