package com.example.dao;

import org.apache.ibatis.annotations.Param;

import java.util.Date;

public interface ReplyDao {
    void reply(@Param("replyContent")String replyContent, @Param("replyTime")Date replyTime, @Param("userId")int userId, @Param("fid")int fid);
}
