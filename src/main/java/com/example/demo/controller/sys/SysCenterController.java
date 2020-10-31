package com.example.demo.controller.sys;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.dto.Result;
import com.example.demo.entity.CenterManagement;
import com.example.demo.mapper.mysql.CenterManagementDao;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;

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
@RequestMapping("/sys/link/center")
public class SysCenterController {

    @Resource
    private CenterManagementDao centerManagementDao;

    @GetMapping
    public String sysCenter() {
        return "sys/center";
    }

    @GetMapping("/management/toAdd")
    public String centerToAdd() {
        return "sys/centerAdd";
    }

    @PostMapping("/management/add")
    @ResponseBody
    public Result managementAdd(String centerName) {
        log.info("添加中心管理名称，名称为：{}", centerName);
        if (centerName == null) {
            throw new RuntimeException("中心管理名称不能为空");
        }
        CenterManagement save = new CenterManagement();
        save.setCenterName(centerName);
        save.setUpdateTime(new Date());
        centerManagementDao.insert(save);
        return ResultUtil.success();
    }

    @GetMapping("/data")
    @ResponseBody
    public Result sysCenterData(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                                @RequestParam(value = "limit", required = false, defaultValue = "15") Integer limit) {
        Page<CenterManagement> pageAll = new Page<>(page, limit);
        IPage<CenterManagement> all = centerManagementDao.findAll(pageAll);
        return ResultUtil.success(all);
    }

    @GetMapping("/findAll")
    @ResponseBody
    public Result getAllCenter() {
        return ResultUtil.success(centerManagementDao.findList());
    }


    @GetMapping("/management/del/{id}")
    @ResponseBody
    public Result delCenterData(@PathVariable Integer id) {
        centerManagementDao.deleteById(id);
        return ResultUtil.success();
    }

    @PostMapping("/management/edit/")
    @ResponseBody
    public Result editCenterData(CenterManagement centerManagement) {
        log.info("CenterData编辑，数据为：{}", centerManagement);
        centerManagementDao.updateById(centerManagement);
        return ResultUtil.success();
    }

}
