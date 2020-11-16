package com.example.demo.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;

/**
 * @program: file-upload
 * @ClassName: Init
 * @Description: 创建图片存放目录
 * @Author: 842712494@qq.com
 * @Date: 2020/11/15 22:11
 * @Version: 1.0.0
 */
@Slf4j
@Component
public class Init implements ApplicationListener<ContextRefreshedEvent> {

    @Resource
    private String filePath;

    @Override
    public void onApplicationEvent(ContextRefreshedEvent contextRefreshedEvent) {
        if (contextRefreshedEvent.getApplicationContext().getParent() == null) {
            File file = new File(filePath);
            if (!file.exists()) {
                log.info("文件目录不存在，执行创建");
                boolean result = file.mkdirs();
            }
        }
    }
}
