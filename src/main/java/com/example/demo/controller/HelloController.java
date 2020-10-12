package com.example.demo.controller;

import com.example.demo.dto.Result;
import com.example.demo.dto.UserSecurityDto;
import com.example.demo.service.UserService;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@Slf4j
public class HelloController {


    @Resource
    UserService userService;

    @GetMapping("/")
    public String getIndex() {
        return "login";
    }

    @GetMapping("/index")
    public String getIndex2() {
        return "login";
    }


    @GetMapping("/login")
    public String index() {
        return "login";
    }

    @PostMapping("/register")
    @ResponseBody
    public Result register(UserSecurityDto userSecurityDto) {
        log.info("注册信息，{}", userSecurityDto);
        userService.userRegister(userSecurityDto);
        return ResultUtil.success("注册成功");
    }

    @GetMapping("/hello")
    @ResponseBody
    @PreAuthorize("isAuthenticated()")
    public String hello() {
        return "hello";
    }


}
