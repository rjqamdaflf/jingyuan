package com.example.demo.service.impl;

import com.example.demo.dto.UserSecurityDto;
import com.example.demo.mapper.mysql.UserDao;
import com.example.demo.service.UserService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    UserDao userDao;

    @Resource
    PasswordEncoder passwordEncoder;

    @Override
    public void userRegister(UserSecurityDto user) {
        //设置名称和登录名相同
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setName(user.getUsername());
        userDao.addUser(user);
    }
}
