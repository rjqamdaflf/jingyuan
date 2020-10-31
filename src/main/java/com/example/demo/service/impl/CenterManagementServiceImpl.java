package com.example.demo.service.impl;

import com.example.demo.entity.CenterManagement;
import com.example.demo.mapper.mysql.CenterManagementDao;
import com.example.demo.service.CenterManagementService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @program: demo
 * @ClassName: CenterManagementServiceImpl
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/31 18:30
 * @Version: 1.0.0
 */
@Service
@Slf4j
public class CenterManagementServiceImpl implements CenterManagementService {
    @Resource
    CenterManagementDao centerManagementDao;

    @Override
    public void checkCenterIdExist(String id) {
        if (id == null) {
            throw new RuntimeException("所属中心ID不能为空");
        }
        CenterManagement centerManagement = centerManagementDao.selectById(id);
        log.info("centerManagement,{}", centerManagement);
        if (centerManagement == null) {
            throw new RuntimeException("所属中心不存在");
        }
    }
}
