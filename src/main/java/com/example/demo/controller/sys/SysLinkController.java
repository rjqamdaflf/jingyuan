package com.example.demo.controller.sys;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @program: demo
 * @ClassName: SysLinkController
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/17 10:54
 * @Version: 1.0.0
 */
@Slf4j
@Controller
@RequestMapping("/sys/link/link")
public class SysLinkController {
    @GetMapping
    public String sysCenter() {
        return "sys/link";
    }

}
