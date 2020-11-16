package com.example.demo.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * @program: demo
 * @ClassName: ImageService
 * @Description: 图片上传服务
 * @Author: 842712494@qq.com
 * @Date: 2020/11/2 23:33
 * @Version: 1.0.0
 */

public interface ImageService {
    /**
     * 上传图片
     *
     * @param file
     * @return
     */
    String upload(MultipartFile file) throws IOException;


}
