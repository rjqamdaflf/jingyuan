package com.example.demo.mapper.mysql;

import com.example.demo.vo.SysMenuVo;

import java.util.List;

/**
 * @author 84271
 */
public interface SysMenuDao {

    List<SysMenuVo> findMenu();
}
