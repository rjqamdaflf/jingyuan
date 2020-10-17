package com.example.demo.controller.sys;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.dto.Result;
import com.example.demo.entity.CenterManagement;
import com.example.demo.entity.LinkManagement;
import com.example.demo.mapper.mysql.CentrerManagementDao;
import com.example.demo.mapper.mysql.LinkManagementDao;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

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
    CentrerManagementDao centrerManagementDao;

    @GetMapping
    public String sysLink() {
        return "sys/link";
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
        String centerId = linkManagement.getCenterId();
        CenterManagement centerManagement = centrerManagementDao.selectById(centerId);
        if (centerManagement == null) {
            throw new RuntimeException("所属中心不存在");
        }
        linkManagementDao.updateById(linkManagement);
        return ResultUtil.success();
    }


}
