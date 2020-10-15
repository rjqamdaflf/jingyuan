package com.example.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @program: demo
 * @ClassName: CenterManagement
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 22:09
 * @Version: 1.0.0
 */
@Data
@TableName("center_management")
public class CenterManagement {
    @TableId(value = "id", type = IdType.AUTO)
    private String id;

    @TableField("update_time")
    private Date updateTime;

    @TableField("center_name")
    private String centerName;
}
