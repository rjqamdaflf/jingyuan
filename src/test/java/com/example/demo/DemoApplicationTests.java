package com.example.demo;

import com.example.demo.dto.User;
import com.example.demo.dto.UserSecurityDto;
import com.example.demo.mapper.ApplicationDao;
import com.example.demo.mapper.mysql.UserDao;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCrypt;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest
public class DemoApplicationTests {

    @Resource
    private UserDao userDao;

    @Test
    public void test3() {
        List<UserSecurityDto> allUser = userDao.findAllUser();
        allUser.forEach(System.out::println);
    }

    @Test
    public void testUserDao() {
        UserSecurityDto user = userDao.userByUsername("admin");
        System.out.println(user);
        System.out.println(user.getAuthorities());
    }


    @Resource
    ApplicationDao applicationDao;

    @Test
    public void test() {
        List<User> all = applicationDao.getAll();
        all.forEach(e -> System.out.println(e));
    }

    @Test
    public void contextLoads() {

        //对密码进行加密
        String hashpw = BCrypt.hashpw("456", BCrypt.gensalt());
        System.out.println(hashpw);

        //校验密码
        boolean checkpw = BCrypt.checkpw("123", "$2a$10$aFsOFzujtPCnUCUKcozsHux0rQ/3faAHGFSVb9Y.B1ntpmEhjRtru");
        boolean checkpw2 = BCrypt.checkpw("123", "$2a$10$HuClcUqr/FSLmzSsp9SHqe7D51Keu1sAL7tUAAcb..FyILiLdFKYy");
        System.out.println(checkpw);
        System.out.println(checkpw2);
    }

}
