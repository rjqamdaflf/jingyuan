package com.example.demo.service.impl;


import com.example.demo.service.ImageService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

/**
 * @program: demo
 * @ClassName: ImageServiceImpl
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/11/2 23:37
 * @Version: 1.0.0
 */
@Slf4j
@Service
public class ImageServiceImpl implements ImageService {


    @Resource
    String filePath;

    @Override
    public String upload(MultipartFile file) throws IOException {
        Assert.notNull(file, "文件不存在!");
        String originalFilename = file.getOriginalFilename();
        Assert.notNull(originalFilename, "文件名不为空!");
        int i = originalFilename.lastIndexOf(".");
        String suf = originalFilename.substring(i);
        String uuid = UUID.randomUUID().toString();
        OutputStream outputStream = new FileOutputStream(filePath + uuid + suf);
        outputStream.write(file.getBytes());
        outputStream.flush();
        outputStream.close();
        return uuid + suf;
    }
}
