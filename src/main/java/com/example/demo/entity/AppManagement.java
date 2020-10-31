package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @program: demo
 * @ClassName: AppManagement
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 22:09
 * @Version: 1.0.0
 */
@Data
@TableName("app_management")
public class AppManagement {
    @TableId(value = "id", type = IdType.AUTO)
    private String id;

    @TableField("create_time")
    private Date createTime;

    @TableField("sys_name")
    private String sysName;


    @TableField("down_url")
    private String downUrl;

    @TableField("center_id")
    private String centerId;

    @TableField("down_passwork")
    private String downPasswork;

    @TableField(exist = false)
    private String centerName;


}
