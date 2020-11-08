package com.example.demo.config;

import cn.hutool.core.codec.Base64;
import cn.hutool.json.JSONObject;
import com.example.demo.DemoApplicationTests;
import org.junit.jupiter.api.Test;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class RedisConfigTest extends DemoApplicationTests {

    @Resource
    RedisTemplate redisTemplate;

    @Test
    public void test1() {
        redisTemplate.opsForValue().set("jofjepowiqjf", "jffjewioqjfiopwjiof");
    }

    @Test
    public void test2() {
        System.out.println(redisTemplate.opsForValue().get("jofjepowiqjf"));
    }


    @Test
    public void test3() {
        Object o = redisTemplate.opsForValue().get("image:d6eee9e7-e5f8-4f1b-8be5-eb1334a33cbf");
        Assert.notNull(o, "查询不到图片资源");
        JSONObject jsonObject = new JSONObject(o.toString());
        System.out.println(jsonObject.getStr("fileName"));
        System.out.println(jsonObject.getStr("data"));
    }

    @Test
    public void test4() throws IOException {
        Object o = redisTemplate.opsForValue().get("image:d6eee9e7-e5f8-4f1b-8be5-eb1334a33cbf");
        Assert.notNull(o, "查询不到图片资源");
        JSONObject jsonObject = new JSONObject(o.toString());
        System.out.println(jsonObject.getStr("fileName"));
        String data = jsonObject.getStr("data");
        byte[] bytes = Base64.decode(data);
        File file = new File("E://tmp//" + jsonObject.getStr("fileName"));
        OutputStream out = new FileOutputStream(file);
        out.write(bytes);
    }


}