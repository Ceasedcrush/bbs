package com.example.bean;

import java.io.Serializable;
import java.util.Date;

public class Forum implements Serializable {
    private int fid, up, replyCount, userId;
    private String title, content;
    private Date createTime;

    public Forum(int fid, int up, int replyCount, int userId, String title, String content, Date createTime) {
        this.fid = fid;
        this.up = up;
        this.replyCount = replyCount;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.createTime = createTime;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public int getUp() {
        return up;
    }

    public void setUp(int up) {
        this.up = up;
    }

    public int getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(int replyCount) {
        this.replyCount = replyCount;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Forum{" +
                "fid=" + fid +
                ", up=" + up +
                ", replyCount=" + replyCount +
                ", userId=" + userId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                '}';
    }
}
