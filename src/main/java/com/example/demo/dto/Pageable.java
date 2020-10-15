package com.example.demo.dto;

import lombok.Data;

/**
 * @program: demo
 * @ClassName: Pageable
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/15 21:22
 * @Version: 1.0.0
 */
@Data
public class Pageable {

    private long count;
    private long page;
    private long limit;

}
