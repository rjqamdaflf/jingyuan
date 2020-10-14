package com.example.demo.daotest;

import com.example.demo.DemoApplicationTests;
import com.example.demo.entity.CenterManagement;
import com.example.demo.mapper.mysql.CentrerManagementDao;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
public class CentrerManagementDaoTest extends DemoApplicationTests {
    @Resource
    private CentrerManagementDao centrerManagementDao;


    @Test
    public void test1() {
        List<CenterManagement> all = centrerManagementDao.findAll();
        all.forEach(e -> log.info(String.valueOf(e)));
    }
}
