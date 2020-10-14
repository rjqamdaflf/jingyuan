package com.example.demo.controller;

import com.example.demo.dto.Result;
import com.example.demo.dto.UserSecurityDto;
import com.example.demo.service.MenuService;
import com.example.demo.service.UserService;
import com.example.demo.utils.ResultUtil;
import com.example.demo.utils.SecurityUserUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @author 84271
 */
@Controller
@Slf4j
public class HelloController {


    @Resource
    UserService userService;
    @Resource
    MenuService menuService;


    @GetMapping("/")
    public String getIndex() {
        return "redirect:/index";
    }

    @GetMapping("/index")
    public String getIndex2(Model model) {
        model.addAttribute("currentUser", SecurityUserUtil.getCurrentUser());
        model.addAttribute("menuList", menuService.getSystemMenu());
        return "index";
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
