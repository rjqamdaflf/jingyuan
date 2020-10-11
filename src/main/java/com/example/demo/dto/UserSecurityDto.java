package com.example.demo.dto;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Data
public class UserSecurityDto implements UserDetails {
    private String id;
    private String avatar;
    private String email;
    private String name;
    private String password;
    private String username;
    private List<String> authorities;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (authorities != null) {
            List<GrantedAuthority> returnAuthorities = new ArrayList<>();
            authorities.forEach(e -> returnAuthorities.add(new SimpleGrantedAuthority(e)));
            return returnAuthorities;
        }
        return null;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        //指示用户的帐户是否已过期。过期的帐户无法通过身份验证。
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
