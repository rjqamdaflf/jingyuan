package com.example.demo.daotest;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.DemoApplicationTests;
import com.example.demo.entity.CenterManagement;
import com.example.demo.mapper.mysql.CentrerManagementDao;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;

@Slf4j
public class CentrerManagementDaoTest extends DemoApplicationTests {
    @Resource
    private CentrerManagementDao centrerManagementDao;


    @Test
    public void test1() {
        IPage<CenterManagement> page = new Page<>(1, 10);
        IPage<CenterManagement> all = centrerManagementDao.findAll(page);
        all.getRecords().forEach(System.out::println);
    }
}
