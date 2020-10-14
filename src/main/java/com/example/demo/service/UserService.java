package com.example.demo.service;

import com.example.demo.dto.UserSecurityDto;

/**
 * @author 84271
 */
public interface UserService {

    /**
     * 注册用户
     *
     * @param user 保存的用户
     */
    void userRegister(UserSecurityDto user);


}
