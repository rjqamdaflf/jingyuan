package com.example.demo.controller;

import com.example.demo.dto.Result;
import com.example.demo.entity.CenterManagement;
import com.example.demo.mapper.mysql.CentrerManagementDao;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @program: demo
 * @ClassName: SysLinkController
 * @Description: 链接管理
 * @Author: 842712494@qq.com
 * @Date: 2020/10/14 21:28
 * @Version: 1.0.0
 */
@Slf4j
@Controller
@RequestMapping("/sys/link")
public class SysLinkController {
    @Resource
    private CentrerManagementDao centrerManagementDao;

    @GetMapping("/center")
    public String sysCenter(HttpServletResponse response) {
        return "sys/center";
    }

    @GetMapping("/center/data")
    @ResponseBody
    public Result sysCenterData() {
        List<CenterManagement> all = centrerManagementDao.findAll();
        return ResultUtil.success(all);
    }

}
