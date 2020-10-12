package com.example.demo.service.impl;

import com.example.demo.entity.MyPersistentRememberMeTokenEntity;
import com.example.demo.mapper.mysql.MyPersistentRememberMeToken;
import org.springframework.security.web.authentication.rememberme.PersistentRememberMeToken;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import javax.annotation.Resource;
import java.util.Date;

//@Service
public class PersistentTokenRepositoryService implements PersistentTokenRepository {

    @Resource
    private MyPersistentRememberMeToken myPersistentRememberMeToken;

    @Override
    public void createNewToken(PersistentRememberMeToken token) {
        MyPersistentRememberMeTokenEntity entity = new MyPersistentRememberMeTokenEntity(token.getUsername(), token.getSeries(), token.getTokenValue(), token.getDate());
        myPersistentRememberMeToken.createNewToken(entity);
    }

    @Override
    public void updateToken(String series, String tokenValue, Date lastUsed) {
        myPersistentRememberMeToken.updateToken(series, tokenValue, lastUsed);
    }

    @Override
    public PersistentRememberMeToken getTokenForSeries(String seriesId) {
        MyPersistentRememberMeTokenEntity token = myPersistentRememberMeToken.getTokenForSeries(seriesId);
        if (token == null) return null;
        return new PersistentRememberMeToken(token.getUsername(), token.getSeries(), token.getTokenValue(), token.getDate());
    }

    @Override
    public void removeUserTokens(String username) {
        myPersistentRememberMeToken.removeUserTokens(username);
    }
}
