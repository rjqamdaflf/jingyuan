package com.example.demo.controller;

import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import com.example.demo.service.ImageService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * @program: file-upload
 * @ClassName: FileController
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/11/15 10:56
 * @Version: 1.0.0
 */
@RestController
@Slf4j
public class FileController {

    @javax.annotation.Resource
    ImageService imageService;

    @javax.annotation.Resource
    String filePath;

    @Value("${app.host-prefix}")
    String hostPrefix;

    @PostMapping(value = "/file/uploadImage", produces = "application/json; charset=utf-8")
    public JSONArray imageUphold(@RequestParam("file[]") MultipartFile file) throws IOException {
        String fileName = imageService.upload(file);
//        HashMap<String, Object> map = new HashMap<>();
        JSONArray jsonArray = new JSONArray();
        JSONObject json = new JSONObject();
        json.putOpt("url", hostPrefix + fileName);
        json.putOpt("name", fileName);
        json.putOpt("error", 0);
        jsonArray.add(json);
        return jsonArray;
    }


    @GetMapping("/file/getImage/{id}")
    public void getImage(@PathVariable String id, HttpServletResponse response) throws IOException {
        Resource resource = new FileSystemResource(filePath + id);
        byte[] bytes = new byte[1024];
        Assert.notNull(id, "id不能为空！");
        int i = id.lastIndexOf(".");
        String substring = id.substring(i + 1);
        OutputStream outputStream = response.getOutputStream();

        log.info("文件后缀名为：{}", substring);
        if (resource.exists()) {
            InputStream inputStream = resource.getInputStream();
            response.setContentType("image/" + substring);
            while (inputStream.read(bytes) > 0) {
                outputStream.write(bytes);
            }
        } else {
            response.setCharacterEncoding("UTF8");
            response.setStatus(HttpStatus.NOT_FOUND.value());
            outputStream.write("图片不存在！".getBytes());
        }
        outputStream.flush();
        outputStream.close();
    }
}
