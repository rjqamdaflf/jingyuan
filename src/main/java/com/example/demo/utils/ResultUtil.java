package com.example.demo.utils;

import com.example.demo.dto.Result;

public class ResultUtil {


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
        return success("成功", object);
    }

    public static Result success() {
        return success(null);
    }

    public static Result error(String msg) {
        Result result = new Result();
        result.setCode(-1);
        result.setMsg(msg);
        return result;
    }
}