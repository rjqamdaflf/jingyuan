package com.example.demo.controller;

import cn.hutool.json.JSONObject;
import com.example.demo.dto.Result;
import com.example.demo.service.ImageService;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;

/**
 * @program: demo
 * @ClassName: ImageUploadController
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/11/2 23:32
 * @Version: 1.0.0
 */
@Slf4j
@RestController
public class ImageUploadController {

    @Resource
    ImageService imageService;

    @RequestMapping(value = "/text/uploadImage", produces = "application/json; charset=utf-8")
    public Result imageUphold(@RequestParam("file") MultipartFile file) throws IOException {
        String url = imageService.upload(file);
        JSONObject json = new JSONObject();
        json.putOpt("src", url);
        return ResultUtil.success(json);
    }
}

