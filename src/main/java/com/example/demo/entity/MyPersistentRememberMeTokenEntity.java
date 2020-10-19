package com.example.demo.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author 84271
 */
@Data
@NoArgsConstructor
public class MyPersistentRememberMeTokenEntity {
    private String username;
    private String series;
    private String tokenValue;
    private Date date;

    public MyPersistentRememberMeTokenEntity(String username, String series, String tokenValue, Date date) {
        this.username = username;
        this.series = series;
        this.tokenValue = tokenValue;
        this.date = date;
    }


}
