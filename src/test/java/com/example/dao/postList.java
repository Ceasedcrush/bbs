package com.example.dao;

import com.example.bean.Forum;
import com.example.service.ForumService;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.List;

public class postList {
    @Test
    public void test01() {
        ForumService forumService = new ForumService();
        List<Forum> postList = forumService.getpostList();
        
        for (Forum i : postList) {
//            System.out.println(i.getContent());
            System.out.println(i.getAuthor());
//            String time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(i.getCreateTime());
//            System.out.println(time);
        }

    }
}
