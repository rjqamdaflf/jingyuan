package com.example.demo.service;

import com.example.demo.dto.UserSecurityDto;

public interface UserService {
    /**
     * 注册用户
     *
     * @param user
     */
    void userRegister(UserSecurityDto user);


}
