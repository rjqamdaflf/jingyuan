package com.example.demo.handler;

import com.example.demo.dto.Result;
import com.example.demo.utils.ResultUtil;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 统一异常处理
 *
 * @author 84271
 */
@ControllerAdvice
public class ExceptionHandlerAdvice {

    /**
     * 处理Rest接口请求时的异常
     *
     * @param ex 异常信息
     */
    @ExceptionHandler(Throwable.class)
    @ResponseBody
    public Result restError(Exception ex) {
        return ResultUtil.error(ex.getMessage());
    }
}