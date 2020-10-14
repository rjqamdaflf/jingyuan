package com.example.demo.service.impl;

import com.example.demo.service.MenuService;
import com.example.demo.vo.SysMenuVo;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
    @Override
    public SysMenuVo getSystemMenu() {
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
        menuVoList3.setMenuPath("/fjejw1");
        List<SysMenuVo> list = new ArrayList<>();
        list.add(menuVoList3);
        list.add(menuVoList2);
        list.add(menuVoList1);
        menuVoList.setChildren(list);
        return menuVoList;
    }
}
