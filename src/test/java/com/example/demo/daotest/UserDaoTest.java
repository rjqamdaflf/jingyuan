package com.example.demo.daotest;

import com.example.demo.DemoApplicationTests;
import com.example.demo.dto.UserSecurityDto;
import com.example.demo.mapper.mysql.UserDao;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;

public class UserDaoTest extends DemoApplicationTests {
    @Resource

    private UserDao userDao;

    @Test
    public void test1() {
        UserSecurityDto us = new UserSecurityDto();
        us.setAvatar("fkewioqjf");
        us.setEmail("fjewoijqiofjew");
        us.setName("klfjewkojqfio");
        us.setUsername("klfjewkojqfio");
        us.setPassword("klfjewkojqfio");
        userDao.addUser(us);
    }


}
