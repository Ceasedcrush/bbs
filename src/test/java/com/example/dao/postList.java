package com.example.dao;

import com.example.bean.Forum;
import com.example.bean.Reply;
import com.example.service.ForumService;
import com.example.service.ReplyService;
import org.junit.Test;

import java.util.List;

public class postList {
    @Test
    public void test01() {
        ReplyService replyService = new ReplyService();
        List<Reply> replyList = replyService.getReplyByFid(1);
        
        for (Reply i : replyList) {
            System.out.println(i);
        }
    }
    @Test
    public void test02() {
        ForumService forumService = new ForumService();
        List<Forum> forumList = (List<Forum>) forumService.getPostList();

        for (Forum i : forumList) {
            System.out.println(i);
        }
    }
    @Test
    public void test03() {
        ForumService forumService = new ForumService();
        List<Forum> forumList = (List<Forum>) forumService.getUserPostList(1);
        for (Forum i : forumList) {
            System.out.println(i);
        }
    }
}
