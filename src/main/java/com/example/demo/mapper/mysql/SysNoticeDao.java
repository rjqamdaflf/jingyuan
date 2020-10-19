package com.example.demo.mapper.mysql;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.SysNotice;

/**
 * @author 84271
 */
public interface SysNoticeDao extends BaseMapper<SysNotice> {

    /**
     * 获取最新的公告
     *
     * @return
     */
    SysNotice getNewSysNotice();

}
