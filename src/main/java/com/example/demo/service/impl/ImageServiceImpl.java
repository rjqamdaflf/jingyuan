package com.example.demo.service.impl;

import cn.hutool.core.codec.Base64;
import cn.hutool.json.JSONObject;
import com.example.demo.service.ImageService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
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

    @Value("${spring.application.imagePrefix}")
    private String imagePrefix;

    @Resource
    RedisTemplate<String, JSONObject> redisTemplate;


    @Override
    public String upload(MultipartFile file) throws IOException {
        Assert.notNull(file, "文件不存在");
        byte[] bytes = file.getBytes();
        //编码
        String encode = Base64.encode(bytes);
        String uuid = UUID.randomUUID().toString();
        JSONObject json = new JSONObject();
        String originalFilename = file.getOriginalFilename();
        json.putOpt("fileName", uuid + originalFilename);
        json.putOpt("data", encode);
        redisTemplate.opsForValue().set(imagePrefix + uuid, json);
        return uuid;
    }
}
