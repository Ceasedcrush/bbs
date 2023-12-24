package com.example.dao;

import com.example.bean.Forum;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

public interface ForumDao {
    //获取帖子信息
    Forum forum_info(int fid);
    int post(@Param("title") String title, @Param("content") String content, @Param("createTime") Date createTime, @Param("userId") int userId);
}
