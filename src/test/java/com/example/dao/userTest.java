package com.example.dao;

import com.example.service.UserService;
import org.junit.Test;

public class userTest {
    @Test
    public void test1() {
        UserService userService = new UserService();

        userService.update_phone("1233",1);
    }
}
