package com.example.demo.dto;

import lombok.Data;

/**
 * @author 84271
 */
@Data
public class Result {
    /**
     * 错误码.
     */
    private Integer code;

    /**
     * 提示信息.
     */
    private String msg;

    /**
     * 具体的内容.
     */
    private Object data;

}