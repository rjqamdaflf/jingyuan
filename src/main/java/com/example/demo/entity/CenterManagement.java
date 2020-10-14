package com.example.demo.entity;

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
public class CenterManagement {
    private String id;
    private Date updateTime;
    private String centerName;
}
