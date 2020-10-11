package com.example.demo.mapper;


import com.baomidou.dynamic.datasource.annotation.DS;
import com.example.demo.dto.User;

import java.util.List;

@DS("sqlserver")
public interface ApplicationDao {

    public List<User> getAll();
}
