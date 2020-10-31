package com.example.demo.mapper.mysql;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.demo.entity.AppManagement;

/**
 * @program: demo
 * @ClassName: CentrerManagementDao
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 22:09
 * @Version: 1.0.0
 */
public interface AppManagementDao extends BaseMapper<AppManagement> {
    /**
     * 查询所有，分页
     *
     * @param page
     * @return
     */
    IPage<AppManagement> findAll(IPage<AppManagement> page);
}

