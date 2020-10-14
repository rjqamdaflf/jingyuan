package com.example.demo.service;

import com.example.demo.vo.SysMenuVo;

import java.util.List;

/**
 * @author 84271
 */
public interface MenuService {
    /**
     * 获取系统菜单
     *
     * @return 返回完整系统菜单
     */
    List<SysMenuVo> getSystemMenu();
}
