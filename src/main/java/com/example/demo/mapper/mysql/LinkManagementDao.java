package com.example.demo.mapper.mysql;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.demo.entity.LinkManagement;

/**
 * @author 84271
 */
public interface LinkManagementDao extends BaseMapper<LinkManagement> {

    /**
     * 查询所有，分页
     *
     * @param page
     * @return
     */
    IPage<LinkManagement> findAll(IPage<LinkManagement> page);

}
