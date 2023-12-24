package com.example.bean;

import java.io.Serializable;
import java.util.Date;

public class Reply implements Serializable {
    private int replyId, up, userId, fid;
    private String replyContent;
    private Date replyTime;

    public Reply(int replyId, int up, int userId, int fid, String replyContent, Date replyTime) {
        this.replyId = replyId;
        this.up = up;
        this.userId = userId;
        this.fid = fid;
        this.replyContent = replyContent;
        this.replyTime = replyTime;
    }

    public int getReplyId() {
        return replyId;
    }

    public void setReplyId(int replyId) {
        this.replyId = replyId;
    }

    public int getUp() {
        return up;
    }

    public void setUp(int up) {
        this.up = up;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    public Date getReplyTime() {
        return replyTime;
    }

    public void setReplyTime(Date replyTime) {
        this.replyTime = replyTime;
    }

    @Override
    public String toString() {
        return "Reply{" +
                "replyId=" + replyId +
                ", up=" + up +
                ", userId=" + userId +
                ", fid=" + fid +
                ", replyContent='" + replyContent + '\'' +
                ", replyTime=" + replyTime +
                '}';
    }
}
