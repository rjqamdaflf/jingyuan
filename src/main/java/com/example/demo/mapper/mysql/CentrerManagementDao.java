package com.example.demo.mapper.mysql;

import com.example.demo.entity.CenterManagement;

import java.util.List;

/**
 * @program: demo
 * @ClassName: CentrerManagementDao
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 22:09
 * @Version: 1.0.0
 */
public interface CentrerManagementDao {

    List<CenterManagement> findAll();

}

