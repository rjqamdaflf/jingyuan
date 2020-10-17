package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @program: demo
 * @ClassName: LinkManagement
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 22:09
 * @Version: 1.0.0
 */
@Data
@TableName("link_management")
public class LinkManagement {
    @TableId(value = "id", type = IdType.AUTO)
    private String id;

    @TableField("create_time")
    private Date createTime;

    @TableField("sys_name")
    private String sysName;


    @TableField("sys_url")
    private String sysUrl;

    @TableField("center_id")
    private String centerId;
}
