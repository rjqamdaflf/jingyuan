package com.example.demo.controller;

import cn.hutool.json.JSONObject;
import com.example.demo.dto.Result;
import com.example.demo.entity.Image;
import com.example.demo.service.ImageService;
import com.example.demo.utils.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.annotation.security.PermitAll;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

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
        json.putOpt("src", "/text/getImage/" + url);
        return ResultUtil.success(json);
    }


    @GetMapping(value = "/text/getImage/{id}")
    @PermitAll
    public Result getImage(@PathVariable String id, HttpServletRequest httpServletRequest,
                           HttpServletResponse httpServletResponse) throws IOException {
        Image image = imageService.getImage(id);

        httpServletResponse.setContentType("image/png");
        OutputStream os = httpServletResponse.getOutputStream();
        os.write(image.getData());
        os.flush();
        os.close();
        return ResultUtil.success();
    }

}

