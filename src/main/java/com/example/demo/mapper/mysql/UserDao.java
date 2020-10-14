package com.example.demo.mapper.mysql;

import com.example.demo.dto.UserSecurityDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 84271
 */
public interface UserDao {
    /**
     * 查找用户
     * @param username 用户名
     * @return
     */
    UserSecurityDto userByUsername(@Param("username") String username);

    /**
     * 查找所有用户
     * @return
     */
    List<UserSecurityDto> findAllUser();

    /**
     * 添加用户
     * @param user 添加的用户
     */
    void addUser(@Param("user") UserSecurityDto user);

}
