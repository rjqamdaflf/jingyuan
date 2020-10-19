package com.example.demo.mapper.mysql;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.demo.entity.SysNotice;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 84271
 */
public interface SysNoticeDao extends BaseMapper<SysNotice> {

    /**
     * 获取最新的公告
     *
     * @return
     */
    List<SysNotice> getNewSysNotice();


    /**
     * 查询所有公告，分页
     *
     * @param page
     * @return
     */
    IPage<SysNotice> findAll(IPage<SysNotice> page);

    /**
     * 更新公告状态
     *
     * @param id
     * @param state
     * @return
     */
    int updateState(@Param("id") String id, @Param("state") int state);
}
