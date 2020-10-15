package com.example.demo.utils;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.example.demo.dto.Result;


/**
 * 统一数据返回
 *
 * @author 84271
 */
public class ResultUtil {

    public static <T> Result success(IPage<T> page) {
        return success("success", page);
    }


    public static <T> Result success(String msg, IPage<T> page) {
        Result result = success(msg, page.getRecords());
        result.setPage(page.getCurrent());
        result.setCount(page.getTotal());
        return result;
    }

    public static Result success(String msg, Object object) {
        Result result = new Result();
        result.setCode(0);
        result.setMsg(msg);
        result.setData(object);
        return result;
    }

    public static Result success(String msg) {
        return success(msg, null);
    }


    public static Result success(Object object) {
        return success("success", object);
    }

    public static Result success() {
        return success((Object) null);
    }

    public static Result error(String msg) {
        Result result = new Result();
        result.setCode(-1);
        result.setMsg(msg);
        return result;
    }
}