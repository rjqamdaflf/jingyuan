package com.example.demo.daotest;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.DemoApplicationTests;
import com.example.demo.entity.CenterManagement;
import com.example.demo.mapper.mysql.CenterManagementDao;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;

@Slf4j
public class CenterManagementDaoTest extends DemoApplicationTests {
    @Resource
    private CenterManagementDao centerManagementDao;


    @Test
    public void test1() {
        IPage<CenterManagement> page = new Page<>(1, 10);
        IPage<CenterManagement> all = centerManagementDao.findAll(page);
        all.getRecords().forEach(System.out::println);
    }

    @Test
    public void test2() {
        IPage<CenterManagement> centerManagements = centerManagementDao.findAll(null);

        centerManagements.getRecords().forEach(e -> log.info(String.valueOf(e)));
    }

}
