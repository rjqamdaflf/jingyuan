package com.example.demo.mapper.mysql;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.demo.entity.CenterManagement;
import com.example.demo.vo.CenterManagementVo;

import java.util.List;

/**
 * @program: demo
 * @ClassName: CentrerManagementDao
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 22:09
 * @Version: 1.0.0
 */
public interface CenterManagementDao extends BaseMapper<CenterManagement> {

    /**
     * 查询所有，分页
     *
     * @param page
     * @return
     */
    IPage<CenterManagement> findAll(IPage<CenterManagement> page);

    /**
     * 查询所有，重命名
     *
     * @return
     */
    List<CenterManagementVo> findList();

}

