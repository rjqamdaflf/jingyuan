package com.example.demo.service.impl;

import com.example.demo.mapper.mysql.LinkManagementDao;
import com.example.demo.service.MenuService;
import com.example.demo.vo.SysMenuVo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @program: demo
 * @ClassName: MenuServiceImpl
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 11:16
 * @Version: 1.0.0
 */
@Service
public class MenuServiceImpl implements MenuService {
    @Resource
    private LinkManagementDao linkManagementDao;

    @Override
    public List<SysMenuVo> getSystemMenu() {
        // todo: 先手动写
        SysMenuVo menuVoList = new SysMenuVo();
        menuVoList.setMenuId("33");
        menuVoList.setCreateTime(new Date());
        menuVoList.setMenuName("名字");
        menuVoList.setMenuPath("/fjejw");
        SysMenuVo menuVoList1 = new SysMenuVo();
        menuVoList1.setMenuId("334");
        menuVoList1.setCreateTime(new Date());
        menuVoList1.setMenuName("名字1");
        menuVoList1.setMenuPath("/fjejw1");
        SysMenuVo menuVoList2 = new SysMenuVo();
        menuVoList2.setMenuId("335");
        menuVoList2.setCreateTime(new Date());
        menuVoList2.setMenuName("名字2");
        menuVoList2.setMenuPath("/fjejw");
        SysMenuVo menuVoList3 = new SysMenuVo();
        menuVoList3.setMenuId("336");
        menuVoList3.setCreateTime(new Date());
        menuVoList3.setMenuName("名字3");
        menuVoList3.setMenuPath("/index");
        List<SysMenuVo> list = new ArrayList<>();
        list.add(menuVoList3);
        list.add(menuVoList2);
        list.add(menuVoList1);
        menuVoList.setChildren(list);

        List<SysMenuVo> resList = new ArrayList<>();
        resList.add(menuVoList);


        SysMenuVo menuVoList22 = new SysMenuVo();
        menuVoList22.setMenuId(UUID.randomUUID().toString());
        menuVoList22.setCreateTime(new Date());
        menuVoList22.setMenuName("链接管理");
        menuVoList22.setMenuPath("/sys/link/");


        SysMenuVo menuVoList221 = new SysMenuVo();
        menuVoList221.setMenuId(UUID.randomUUID().toString());
        menuVoList221.setCreateTime(new Date());
        menuVoList221.setMenuName("中心管理");
        menuVoList221.setMenuPath("/sys/link/center");

        SysMenuVo menuVoList222 = new SysMenuVo();
        menuVoList222.setMenuId(UUID.randomUUID().toString());
        menuVoList222.setCreateTime(new Date());
        menuVoList222.setMenuName("链接管理");
        menuVoList222.setMenuPath("/sys/link/link");

        SysMenuVo menuVoList223 = new SysMenuVo();
        menuVoList223.setMenuId(UUID.randomUUID().toString());
        menuVoList223.setCreateTime(new Date());
        menuVoList223.setMenuName("客户端管理");
        menuVoList223.setMenuPath("/sys/link/app");

        List<SysMenuVo> list2 = new ArrayList<>();
        list2.add(menuVoList221);
        list2.add(menuVoList222);
        list2.add(menuVoList223);

        menuVoList22.setChildren(list2);

        resList.add(menuVoList22);

        return resList;
    }

    @Override
    public List<SysMenuVo> getMenu() {
        return linkManagementDao.selectIndexMenu();
    }
}
