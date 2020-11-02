package com.example.demo.config;

import cn.hutool.json.JSONObject;
import com.example.demo.DemoApplicationTests;
import org.junit.jupiter.api.Test;
import org.springframework.data.redis.core.RedisTemplate;

import javax.annotation.Resource;

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

        assert o != null;
        JSONObject jsonObject = new JSONObject(o.toString());
        System.out.println(jsonObject.getStr("fileName"));
        System.out.println(jsonObject.getStr("data"));


    }
}