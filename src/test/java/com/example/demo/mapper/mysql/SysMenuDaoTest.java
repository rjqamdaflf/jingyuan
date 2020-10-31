package com.example.demo.mapper.mysql;

import com.example.demo.DemoApplicationTests;
import com.example.demo.vo.SysMenuVo;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import javax.annotation.Resource;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@Slf4j
class SysMenuDaoTest extends DemoApplicationTests {

    @Resource
    SysMenuDao sysMenuDao;

    @Test
    public void test1() {
        List<SysMenuVo> menu = sysMenuDao.findMenu();


        menu.forEach(e -> log.info(e.getMenuEnglish()));
    }
}