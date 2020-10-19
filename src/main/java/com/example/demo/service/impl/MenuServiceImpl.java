package com.example.demo.service.impl;

import com.example.demo.mapper.mysql.LinkManagementDao;
import com.example.demo.mapper.mysql.SysMenuDao;
import com.example.demo.service.MenuService;
import com.example.demo.vo.SysMenuVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @program: demo
 * @ClassName: MenuServiceImpl
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 11:16
 * @Version: 1.0.0
 */
@Service
@Slf4j
public class MenuServiceImpl implements MenuService {
    @Resource
    private LinkManagementDao linkManagementDao;

    @Resource
    private SysMenuDao sysMenuDao;

    @Override
    public List<SysMenuVo> getSystemMenu() {
        List<SysMenuVo> menu = sysMenuDao.findMenu();
        List<SysMenuVo> fatherMenu = menu.stream().filter(e -> e.getMenuParentId() == null).collect(Collectors.toList());
        fatherMenu.forEach(e -> e.setChildren(menu.stream().filter(item -> e.getMenuId().equals(item.getMenuParentId())).collect(Collectors.toList())));
        return fatherMenu;
    }

    @Override
    public List<SysMenuVo> getMenu() {
        return linkManagementDao.selectIndexMenu();
    }
}
