package com.example.demo.utils;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

/**
 * @program: demo
 * @ClassName: SecurityUserUtil
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 10:57
 * @Version: 1.0.0
 */
public class SecurityUserUtil {

    public static Object getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getPrincipal();
    }
}
