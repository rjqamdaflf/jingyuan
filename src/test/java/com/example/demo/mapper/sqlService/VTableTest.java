package com.example.demo.mapper.sqlService;

import com.example.demo.DemoApplicationTests;
import com.example.demo.entity.sqlserver.VTable;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;

@Slf4j
class VTableTest extends DemoApplicationTests {
    @Resource
    VTableDao vTableDao;

    @Test
    public void test1() {
        VTable vTable = vTableDao.selectById(1);
        log.info("id为1,数据为：{}", vTable);
    }

}