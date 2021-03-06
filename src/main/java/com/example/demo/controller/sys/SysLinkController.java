package com.example.demo.controller.sys;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.dto.Result;
import com.example.demo.entity.LinkManagement;
import com.example.demo.mapper.mysql.CenterManagementDao;
import com.example.demo.mapper.mysql.LinkManagementDao;
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
    @Resource
    LinkManagementDao linkManagementDao;

    @Resource
    CenterManagementDao centerManagementDao;

    @Resource
    CenterManagementService centerManagementService;


    @GetMapping
    public String sysLink() {
        return "sys/link";
    }

    @PostMapping("/management/add")
    @ResponseBody
    public Result linkAdd(LinkManagement linkManagement) {
        if (linkManagement.getSysName() == null || "".equals(linkManagement.getSysName())) {
            throw new RuntimeException("系统名称不能为空!");
        }
        if (linkManagement.getSysUrl() == null || "".equals(linkManagement.getSysUrl())) {
            throw new RuntimeException("URL不能为空!");
        }
        if (linkManagement.getCenterId() == null || "".equals(linkManagement.getCenterId())) {
            throw new RuntimeException("所属中心不能为空!");
        }
        log.info("添加的数据为：{}", linkManagement);
        centerManagementService.checkCenterIdExist(linkManagement.getCenterId());
        linkManagement.setCreateTime(new Date());
        linkManagementDao.insert(linkManagement);
        return ResultUtil.success();
    }

    @GetMapping("/management/toAdd")
    public String linkToAdd(Model model) {
        model.addAttribute("centerData", centerManagementDao.findList());
        return "sys/linkAdd";
    }


    @GetMapping("/data")
    @ResponseBody
    public Result sysLinkData(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                              @RequestParam(value = "limit", required = false, defaultValue = "15") Integer limit) {
        Page<LinkManagement> pageAll = new Page<>(page, limit);
        IPage<LinkManagement> all = linkManagementDao.findAll(pageAll);
        return ResultUtil.success(all);
    }


    @GetMapping("/management/del/{id}")
    @ResponseBody
    public Result delLinkData(@PathVariable Integer id) {
        linkManagementDao.deleteById(id);
        return ResultUtil.success();
    }


    @PostMapping("/management/edit/")
    @ResponseBody
    public Result editLinkData(LinkManagement linkManagement) {
        log.info("editLinkData，数据为：{}", linkManagement);
        if (linkManagement.getId() == null) {
            throw new RuntimeException("id不能为空");
        }
        centerManagementService.checkCenterIdExist(linkManagement.getCenterId());
        linkManagementDao.updateById(linkManagement);
        return ResultUtil.success();
    }


}
