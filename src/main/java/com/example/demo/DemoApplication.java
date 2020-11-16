package com.example.demo;

import com.example.demo.condition.LinuxCondition;
import com.example.demo.condition.WindowsCondition;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Conditional;

/**
 * @author 84271
 */
@SpringBootApplication
@Slf4j
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }


    @Value("${app.windows-file-location}")
    String windowsLocation;


    @Value("${app.linux-file-location}")
    String linuxLocation;


    @Bean(name = "filePath")
    @Conditional(WindowsCondition.class)
    public String windowsFilePath() {
        log.info("注入windows环境下图片存放路径");
        return windowsLocation;
    }

    @Bean(name = "filePath")
    @Conditional(LinuxCondition.class)
    public String linuxFilePath() {
        log.info("注入linux环境下图片存放路径");
        return linuxLocation;
    }


}
