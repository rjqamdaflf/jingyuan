package com.example.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @program: demo
 * @ClassName: MyMvcConfigurer
 * @Description: web配置类
 * @Author: 842712494@qq.com
 * @Date: 2020/10/26 15:24
 * @Version: 1.0.0
 */
@Configuration
public class MyMvcConfigurer implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new MyHandlerInterceptor());
    }
}
