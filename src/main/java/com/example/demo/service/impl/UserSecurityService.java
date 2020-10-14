package com.example.demo.service.impl;

import com.example.demo.mapper.mysql.UserDao;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 鉴权服务
 *
 * @author 84271
 */
@Service
public class UserSecurityService implements UserDetailsService {

    @Resource
    private
    UserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        return userDao.userByUsername(s);
    }
}
