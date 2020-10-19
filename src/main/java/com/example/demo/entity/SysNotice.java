package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @program: demo
 * @ClassName: SysNotice
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/19 17:40
 * @Version: 1.0.0
 */
@Data
@TableName("sys_notice")
public class SysNotice {
    @TableId(value = "id", type = IdType.AUTO)
    private String id;

    @TableField("create_time")
    private Date updateTime;

    @TableField("content")
    private String content;


}
