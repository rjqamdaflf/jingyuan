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
    private Long id;
    private String avatar;
    private String email;
    private String name;
    private String password;
    private String username;
    private List<RoleDto> dbAuthorities;


    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        if (dbAuthorities != null) {
            List<GrantedAuthority> returnAuthorities = new ArrayList<>();
            dbAuthorities.forEach(e -> returnAuthorities.add(new SimpleGrantedAuthority(e.getAuthorityName())));
            return returnAuthorities;
        }
        return null;
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
