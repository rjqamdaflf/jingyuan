package com.example.demo.controller.sys;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.dto.Result;
import com.example.demo.entity.AppManagement;
import com.example.demo.mapper.mysql.AppManagementDao;
import com.example.demo.mapper.mysql.CenterManagementDao;
import com.example.demo.service.CenterManagementService;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;

/**
 * @program: demo
 * @ClassName: SysAppController
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/31 17:26
 * @Version: 1.0.0
 */
@Slf4j
@Controller
@RequestMapping("/sys/link/app")
public class SysAppController {
    @Resource
    private AppManagementDao appManagementDao;

    @Resource
    private CenterManagementDao centerManagementDao;

    @Resource
    private CenterManagementService centerManagementService;


    @GetMapping
    public String sysApp() {
        return "sys/app";
    }


    @GetMapping("/toAdd")
    public String appToAdd(Model model) {
        model.addAttribute("centerData", centerManagementDao.findList());
        return "sys/appAdd";
    }


    @GetMapping("/data")
    @ResponseBody
    public Result getData(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                          @RequestParam(value = "limit", required = false, defaultValue = "15") Integer limit) {

        Page<AppManagement> pageAll = new Page<>(page, limit);
        IPage<AppManagement> data = appManagementDao.findAll(pageAll);
        return ResultUtil.success(data);
    }


    @PostMapping("/edit")
    @ResponseBody
    public Result appEdit(AppManagement appManagement) {
        log.info("客户端修改，修改为：{}", appManagement);
        if (appManagement.getId() == null) {
            throw new RuntimeException("id不能为空");
        }
        centerManagementService.checkCenterIdExist(appManagement.getCenterId());
        appManagementDao.updateById(appManagement);
        return ResultUtil.success();
    }

    @PostMapping("/add")
    @ResponseBody
    public Result addAppItem(AppManagement appManagement) {
        log.info("客户端增加，增加为：{}", appManagement);
        appManagement.setCreateTime(new Date());
        appManagementDao.insert(appManagement);
        return ResultUtil.success();
    }

    @GetMapping("/del/{id}")
    @ResponseBody
    public Result delLinkData(@PathVariable Integer id) {
        appManagementDao.deleteById(id);
        return ResultUtil.success();
    }


}
