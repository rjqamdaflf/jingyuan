package com.example.demo.controller.sys;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.dto.Result;
import com.example.demo.entity.CenterManagement;
import com.example.demo.mapper.mysql.CentrerManagementDao;
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
    private CentrerManagementDao centrerManagementDao;

    @GetMapping
    public String sysCenter() {
        return "sys/center";
    }

    @GetMapping("/management/toAdd")
    public String managementToAdd() {
        return "sys/centerAdd";
    }

    @PostMapping("/management/add")
    @ResponseBody
    public Result managementAdd(String centerName) {
        log.info("添加中心管理名称，名称为：{}", centerName);
        CenterManagement save = new CenterManagement();
        save.setCenterName(centerName);
        save.setUpdateTime(new Date());
        centrerManagementDao.insert(save);
        return ResultUtil.success();
    }

    @GetMapping("/data")
    @ResponseBody
    public Result sysCenterData(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                                @RequestParam(value = "limit", required = false, defaultValue = "15") Integer limit) {
        Page<CenterManagement> pageAll = new Page<>(page, limit);
        IPage<CenterManagement> all = centrerManagementDao.findAll(pageAll);
        return ResultUtil.success(all);
    }

    @GetMapping("/findAll")
    @ResponseBody
    public Result getAllCenter() {
        return ResultUtil.success(centrerManagementDao.selectList(null));
    }


    @GetMapping("/management/del/{id}")
    @ResponseBody
    public Result delCenterData(@PathVariable Integer id) {
        centrerManagementDao.deleteById(id);
        return ResultUtil.success();
    }

    @PostMapping("/management/edit/")
    @ResponseBody
    public Result editCenterData(CenterManagement centerManagement) {
        log.info(String.valueOf(centerManagement));
        centrerManagementDao.updateById(centerManagement);
        return ResultUtil.success();
    }

}
