package com.example.demo.mapper.testMapper;

import com.baomidou.dynamic.datasource.annotation.DS;

@DS("testdb")
public interface TestDao {
    User getUserById(Integer id);
}
