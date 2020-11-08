package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.entity.Image;
import com.example.demo.mapper.mysql.ImageMapper;
import com.example.demo.service.ImageService;
import lombok.extern.slf4j.Slf4j;
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
public class ImageServiceImpl extends ServiceImpl<ImageMapper, Image> implements ImageService {


//    @Resource
//    RedisTemplate<String, JSONObject> redisTemplate;


//    @Override
//    public String upload(MultipartFile file) throws IOException {
//        Assert.notNull(file, "文件不存在");
//        byte[] bytes = file.getBytes();
//        //编码
//        String encode = Base64.encode(bytes);
//        String uuid = UUID.randomUUID().toString();
//        JSONObject json = new JSONObject();
//        String originalFilename = file.getOriginalFilename();
//        json.putOpt("fileName", uuid + originalFilename);
//        json.putOpt("data", encode);
//        redisTemplate.opsForValue().set(imagePrefix + uuid, json);
//        return uuid;
//    }


    @Resource
    ImageMapper imageMapper;

    @Override
    public String upload(MultipartFile file) throws IOException {
        Assert.notNull(file, "图片不存在");
        //编码
        Image image = new Image();
        image.setData(file.getBytes());
        String originalFilename = file.getOriginalFilename();
        Assert.notNull(originalFilename, "文件名不正确！");
        String newName = UUID.randomUUID().toString() + originalFilename.substring(originalFilename.lastIndexOf("."));
        image.setFileName(newName);
        imageMapper.insert(image);
        return image.getId();
    }

    @Override
    public Image getImage(String id) {
        Image image = imageMapper.selectById(id);
        Assert.notNull(image, "图片不存在！");
        return image;
    }
}
