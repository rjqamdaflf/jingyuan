package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import javax.annotation.Resource;
import javax.sql.DataSource;

@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true) // 启用方法安全设置
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    private static final String KEY = "www.rjqamdaflf.com";

    @Resource
    UserDetailsService userDetailsService;

    @Resource
    PasswordEncoder passwordEncoder;

    @Resource
    AuthenticationProvider authenticationProvider;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();   // 使用 BCrypt 加密
    }


//    @Bean
//    public UserDetailsService userDetailsService() {
//        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
//        manager.createUser(User.withUsername("zhangsan").password("$2a$10$aFsOFzujtPCnUCUKcozsHux0rQ/3faAHGFSVb9Y.B1ntpmEhjRtru").authorities("p1").build());
//        manager.createUser(User.withUsername("lisi").password("456").authorities("p2").build());
//        return manager;
//    }

    @Resource
    SavedRequestAwareAuthenticationSuccessHandler savedRequestAwareAuthenticationSuccessHandler;

    @Resource
    SimpleUrlAuthenticationFailureHandler simpleUrlAuthenticationFailureHandler;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                //放行静态文件
                .antMatchers("/common/**", "/css/**", "/js/**", "/fonts/**").permitAll()
                //放行主页
//                .antMatchers("/index", "/").permitAll()
                //放行图标
                .antMatchers("/favicon.ico").permitAll()
                .antMatchers(HttpMethod.POST, "/register").permitAll()//放行注册接口
                .antMatchers(HttpMethod.POST, "/login").permitAll()
                .antMatchers(HttpMethod.GET, "/login").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin()   //基于 Form 表单登录验证
                .loginPage("/login")
                .loginProcessingUrl("/login")
                .successHandler(savedRequestAwareAuthenticationSuccessHandler)
                .failureHandler(simpleUrlAuthenticationFailureHandler)
//                .defaultSuccessUrl("/hello")//登录认证成功后默认转跳的路径
//                .failureUrl("/login_error") // 登录失败
                .and().rememberMe().key(KEY) // 启用 remember me
                .and().exceptionHandling().accessDeniedPage("/403");  // 处理异常，拒绝访问就重定向到 403 页面
        http.csrf().disable();     //关闭跨站请求防护

        http
                //开启记住我
                .rememberMe()
                .tokenValiditySeconds(604800)//七天免登陆
                .tokenRepository(persistentTokenRepository)
                .userDetailsService(userDetailsService);
    }

    @Resource
    DataSource dataSource;

    @Resource
    PersistentTokenRepository persistentTokenRepository;

    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl persistentTokenRepository = new JdbcTokenRepositoryImpl();
        persistentTokenRepository.setDataSource(dataSource);
        return persistentTokenRepository;
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authenticationProvider = new DaoAuthenticationProvider();
        authenticationProvider.setUserDetailsService(userDetailsService);
        authenticationProvider.setPasswordEncoder(passwordEncoder); // 设置密码加密方式
        return authenticationProvider;
    }

    /**
     * 认证信息管理
     *
     * @param auth
     * @throws Exception
     */
    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService);
        auth.authenticationProvider(authenticationProvider);
    }
}

