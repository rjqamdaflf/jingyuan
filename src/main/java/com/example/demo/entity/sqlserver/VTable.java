package com.example.demo.entity.sqlserver;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @program: demo
 * @ClassName: VTable
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/11/2 21:23
 * @Version: 1.0.0
 */
@Data
@TableName("V090003_10")
public class VTable {
    @TableId(type = IdType.AUTO)
    String id;
    String ct;

    String number;
    @TableField("MsgCode")
    String msgCode;
    String t1;


}
