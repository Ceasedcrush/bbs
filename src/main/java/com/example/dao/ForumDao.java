package com.example.dao;

import com.example.bean.Forum;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.Date;
import java.util.List;

public interface ForumDao {
    //获取全部帖子
    List<Forum> getpostList();
    //获取帖子信息
    Forum post_info(int fid);
    //发布帖子
    void post(@Param("title") String title, @Param("content") String content, @Param("createTime") Date createTime, @Param("userId") int userId);
}
