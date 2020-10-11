package com.example.demo.mapper.mysql;

import com.example.demo.dto.UserSecurityDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    UserSecurityDto UserByUsername(@Param("username") String username);

    List<UserSecurityDto> findAllUser();
}
