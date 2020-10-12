package com.example.demo.daotest;

import com.example.demo.DemoApplicationTests;
import com.example.demo.entity.MyPersistentRememberMeTokenEntity;
import com.example.demo.mapper.mysql.MyPersistentRememberMeToken;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;
import java.util.Date;

public class MyPersistentRememberMeTokenTest extends DemoApplicationTests {
    @Resource
    private MyPersistentRememberMeToken myPersistentRememberMeToken;


    @Test
    public void test1() {
        MyPersistentRememberMeTokenEntity persistentRememberMeToken = new MyPersistentRememberMeTokenEntity("fqfweqf", "fewqfwqe", "", new Date());
        myPersistentRememberMeToken.createNewToken(persistentRememberMeToken);
        System.out.println(myPersistentRememberMeToken.getTokenForSeries("5AEN9knnvy0PwDZ+vz4edQ=="));
    }
}
