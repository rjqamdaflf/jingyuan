package com.example.demo.mapper.sqlService;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.entity.sqlserver.VTable;

/**
 * @program: demo
 * @ClassName: VTable
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/11/2 21:25
 * @Version: 1.0.0
 */
@DS("sqlserver")
public interface VTableDao extends BaseMapper<VTable> {
}
