package com.example.demo.controller.system;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.dto.Result;
import com.example.demo.entity.SysNotice;
import com.example.demo.mapper.mysql.SysNoticeDao;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;

/**
 * @program: demo
 * @ClassName: NoticeController
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/10/19 21:41
 * @Version: 1.0.0
 */
@Controller
@RequestMapping("/sys/system/notice")
@Slf4j
public class NoticeController {

    @Resource
    private SysNoticeDao sysNoticeDao;

    @GetMapping
    public String sysNotice() {
        return "sysSet/noticeTable";
    }

    @GetMapping("/data")
    @ResponseBody
    public Result noticeData(@RequestParam(value = "page", required = false, defaultValue = "1") Integer page,
                             @RequestParam(value = "limit", required = false, defaultValue = "15") Integer limit) {
        Page<SysNotice> pageAll = new Page<>(page, limit);
        IPage<SysNotice> all = sysNoticeDao.findAll(pageAll);
        return ResultUtil.success(all);
    }

    @PostMapping("/update")
    @ResponseBody
    public Result updateNotice(SysNotice sysNotice) {
        log.info("接受的数据为：{}", sysNotice);
        SysNotice notice = sysNoticeDao.selectById(sysNotice.getId());
        if (notice == null) {
            throw new RuntimeException("公告id不存在！");
        }
        notice.setContent(sysNotice.getContent());
        notice.setTitle(sysNotice.getTitle());
        notice.setShowFlag(sysNotice.getShowFlag());
        notice.setUpdateTime(new Date());
        sysNoticeDao.updateById(notice);
        return ResultUtil.success();
    }

    @GetMapping("/del/{id}")
    @ResponseBody
    public Result delNotice(@PathVariable String id) {
        log.info("删除的id为：{}", id);
        sysNoticeDao.deleteById(id);
        return ResultUtil.success();
    }

    @PostMapping("/update/state")
    @ResponseBody
    public Result updateState(@RequestParam("id") String id, @RequestParam("state") String state) {
        if (id == null || state == null) {
            throw new RuntimeException("参数错误!");
        }
        sysNoticeDao.updateState(id, "true".equals(state) ? 1 : 0);
        return ResultUtil.success();
    }
}
