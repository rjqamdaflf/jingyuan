package com.example.demo.config;

import com.example.demo.utils.IPUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @program: demo
 * @ClassName: MyHandlerInterceptor
 * @Description: 拦截器
 * @Author: 842712494@qq.com
 * @Date: 2020/10/26 15:25
 * @Version: 1.0.0
 */
@Slf4j
public class MyHandlerInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String ipAddress = IPUtil.getIpAddress(request);
        log.info("访问ip为:{}", ipAddress);
        return true;
    }
}
