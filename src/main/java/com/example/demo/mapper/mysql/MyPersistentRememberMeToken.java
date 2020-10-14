package com.example.demo.mapper.mysql;

import com.baomidou.dynamic.datasource.annotation.DS;
import com.example.demo.entity.MyPersistentRememberMeTokenEntity;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

/**
 * @author 84271
 */
@DS("testdb")
public interface MyPersistentRememberMeToken {

    void createNewToken(@Param("token") MyPersistentRememberMeTokenEntity token);

    void updateToken(@Param("series") String series, @Param("tokenValue") String tokenValue, @Param("lastUsed") Date lastUsed);

    MyPersistentRememberMeTokenEntity getTokenForSeries(@Param("seriesId") String seriesId);

    void removeUserTokens(@Param("username") String username);
}
