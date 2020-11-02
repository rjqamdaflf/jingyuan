/*
 Navicat Premium Data Transfer

 Source Server         : 116.62.123.32
 Source Server Type    : MySQL
 Source Server Version : 50562
 Source Host           : 116.62.123.32:7777
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50562
 File Encoding         : 65001

 Date: 02/11/2020 19:49:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_management
-- ----------------------------
DROP TABLE IF EXISTS `app_management`;
CREATE TABLE `app_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `down_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '下载url',
  `create_time` datetime NOT NULL,
  `center_id` int(11) NOT NULL,
  `down_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '下载密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of app_management
-- ----------------------------
INSERT INTO `app_management` VALUES (2, '兰州能管平台', 'http://xcgl.jy100.com', '2020-10-01 16:00:00', 109, '55454');
INSERT INTO `app_management` VALUES (6, '北京能管平台', 'http://jcgl.jy100.com', '2020-10-09 16:00:00', 112, 'fewqfwe');
INSERT INTO `app_management` VALUES (10, '沈阳能管平台', 'http://ptgl.jy100.com', '2020-10-29 16:00:00', 107, 'fqwfewq33');
INSERT INTO `app_management` VALUES (11, '西宁能管平台', 'http://www.kugou.com/', '2020-10-19 16:00:00', 106, 'fqwfew');
INSERT INTO `app_management` VALUES (12, '北京分时控制', 'https://www.jd.com/', '2020-10-12 16:00:00', 107, 'rewqfw');
INSERT INTO `app_management` VALUES (16, '兰州分时控制333', 'https://www.bilibili.com/', '2020-10-12 16:00:00', 106, 'fwqer');
INSERT INTO `app_management` VALUES (17, '天水分时控制', 'https://mail.googlejfoiejwqpijfoqw.com/mail/u/0/', '2020-10-19 16:00:00', 109, 'ewqrewjfejwqjfjfieojwq');
INSERT INTO `app_management` VALUES (25, 'fdfasfew', 'fwqef', '2020-10-31 13:31:44', 106, 'fewqf');
INSERT INTO `app_management` VALUES (26, 'fdfasfew', 'fwqef', '2020-10-30 16:00:00', 108, 'fewqf');
INSERT INTO `app_management` VALUES (27, 'jfoijejwjqf', 'fjieowjqioojf', '2020-10-31 13:31:57', 106, 'ijfeiojwqiojf');
INSERT INTO `app_management` VALUES (29, 'fdfasfew', 'fwqef', '2020-10-30 16:00:00', 107, 'fewqf');
INSERT INTO `app_management` VALUES (30, 'jfoijeoiwjqifjowjqfj', 'fjeoijwioqjfijewiojqfioj', '2020-10-31 13:32:11', 106, 'fjeiojwiqjfijwqijfowqef');
INSERT INTO `app_management` VALUES (31, '48789784f56ew4w', 'w4f89we489f4', '2020-10-31 13:32:41', 106, '4f5e4wq894f89wqef');
INSERT INTO `app_management` VALUES (32, '48789784f56ew4w', 'w4f89we489f4', '2020-10-30 16:00:00', 109, '4f5e4wq894f89wqef');
INSERT INTO `app_management` VALUES (33, 'fewqfewqfhnfjjwj', 'fjeoiwkssfopjoiewdjfiojwqofqjqfiojij', '2020-10-30 16:00:00', 112, 'fewqfewifjiejwqiofjweqf');
INSERT INTO `app_management` VALUES (34, 'hnfjjwjdjfiojweqifjowefw', 'fjeokjfikojeiowfiojqwfoiwjqfiojij', '2020-10-30 16:00:00', 112, 'fweqfewqfifjiejwqiofjweqf');
INSERT INTO `app_management` VALUES (35, 'hnfjjwjjfiojeiojf', 'kfopekwqkfewjoifjwqoijef', '2020-10-30 16:00:00', 110, 'fewqfewqfweq');
INSERT INTO `app_management` VALUES (36, 'hnfjjwj', 'oifjioejwqifioweqffjeoiwjqfiojij', '2020-10-30 16:00:00', 109, 'fewqfwefwfiijwqeiofjiowqfqw');

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (1, 'ROLE_ADMIN');
INSERT INTO `authority` VALUES (2, 'ROLE_USER');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment_size` int(11) NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `html_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `read_size` int(11) NULL DEFAULT NULL,
  `summary` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tags` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vote_size` int(11) NULL DEFAULT NULL,
  `catalog_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKefps36p8dyf3t7yjmic1v0jcs`(`catalog_id`) USING BTREE,
  INDEX `FKpxk2jtysqn41oop7lvxcp6dqq`(`user_id`) USING BTREE,
  CONSTRAINT `FKefps36p8dyf3t7yjmic1v0jcs` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpxk2jtysqn41oop7lvxcp6dqq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog
-- ----------------------------

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment`  (
  `blog_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL,
  UNIQUE INDEX `UK_fk711og2oqkoc82slgnfws8t0`(`comment_id`) USING BTREE,
  INDEX `FKb9cpog8ie2cyapsyyt7gikpbl`(`blog_id`) USING BTREE,
  CONSTRAINT `FKb9cpog8ie2cyapsyyt7gikpbl` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKc4ysudanwhfrrhytio0272sx9` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for blog_vote
-- ----------------------------
DROP TABLE IF EXISTS `blog_vote`;
CREATE TABLE `blog_vote`  (
  `blog_id` bigint(20) NOT NULL,
  `vote_id` bigint(20) NOT NULL,
  UNIQUE INDEX `UK_nmdrm82d80oq7pw0ab20pia23`(`vote_id`) USING BTREE,
  INDEX `FKaar8kqti49vaol2nw9e42lgxc`(`blog_id`) USING BTREE,
  CONSTRAINT `FK4bkj28o189fk8jic0snsjfj2h` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKaar8kqti49vaol2nw9e42lgxc` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_vote
-- ----------------------------

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKk3mprwb52pe5lfv3l2xpmwj8s`(`user_id`) USING BTREE,
  CONSTRAINT `FKk3mprwb52pe5lfv3l2xpmwj8s` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of catalog
-- ----------------------------

-- ----------------------------
-- Table structure for center_management
-- ----------------------------
DROP TABLE IF EXISTS `center_management`;
CREATE TABLE `center_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `update_time` datetime NOT NULL,
  `center_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of center_management
-- ----------------------------
INSERT INTO `center_management` VALUES (106, '2020-10-08 16:00:00', '短信中心');
INSERT INTO `center_management` VALUES (107, '2020-10-19 10:04:16', '人工智能控制');
INSERT INTO `center_management` VALUES (108, '2020-10-19 10:04:23', '西宁能管平台');
INSERT INTO `center_management` VALUES (109, '2020-10-19 10:04:30', '天水能管平台');
INSERT INTO `center_management` VALUES (110, '2020-10-19 10:04:37', '兰州能管平台');
INSERT INTO `center_management` VALUES (111, '2020-10-19 10:04:42', '沈阳能管平台');
INSERT INTO `center_management` VALUES (112, '2020-10-19 10:04:48', '北京能管平台');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK8kcum44fvpupyw6f5baccx25c`(`user_id`) USING BTREE,
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for error_log
-- ----------------------------
DROP TABLE IF EXISTS `error_log`;
CREATE TABLE `error_log`  (
  `exc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `exc_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `exc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `exc_requ_param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `oper_create_time` datetime NOT NULL,
  `oper_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_ver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作版本号',
  PRIMARY KEY (`exc_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of error_log
-- ----------------------------
INSERT INTO `error_log` VALUES (1, 'java.lang.RuntimeException:出现异常啦!\n	com.example.blog.controller.HelloController.exTest(HelloController.java:26)\ncom.example.blog.controller.HelloController$$FastClassBySpringCGLIB$$c4a23177.invoke(<generated>)\norg.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\norg.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:52)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:174)\norg.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\norg.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\norg.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\ncom.example.blog.controller.HelloController$$EnhancerBySpringCGLIB$$44896368.exTest(<generated>)\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\njava.lang.reflect.Method.invoke(Method.java:498)\norg.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\norg.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\norg.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)\norg.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\norg.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\norg.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\norg.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\norg.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:866)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:635)\norg.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:742)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\norg.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\norg.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.rememberme.RememberMeAuthenticationFilter.doFilter(RememberMeAuthenticationFilter.java:150)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:200)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.csrf.CsrfFilter.doFilterInternal(CsrfFilter.java:100)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\norg.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\norg.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\norg.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\norg.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\norg.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)\norg.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\norg.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\norg.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\norg.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\norg.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\norg.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\norg.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)\norg.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)\norg.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\njava.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\njava.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\norg.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\njava.lang.Thread.run(Thread.java:748)\n', 'java.lang.RuntimeException', '{}', '2020-10-07 15:49:32', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.HelloController.exTest', '/ex', '', '未登录用户', '2308');
INSERT INTO `error_log` VALUES (2, 'java.lang.RuntimeException:出现异常啦!\n	com.example.blog.controller.HelloController.exTest(HelloController.java:28)\ncom.example.blog.controller.HelloController$$FastClassBySpringCGLIB$$c4a23177.invoke(<generated>)\norg.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:746)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\norg.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:52)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:174)\norg.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\norg.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:185)\norg.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:688)\ncom.example.blog.controller.HelloController$$EnhancerBySpringCGLIB$$44896368.exTest(<generated>)\nsun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\nsun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\nsun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\njava.lang.reflect.Method.invoke(Method.java:498)\norg.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:209)\norg.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\norg.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:102)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:877)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:783)\norg.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\norg.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:991)\norg.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:925)\norg.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:974)\norg.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:866)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:635)\norg.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:851)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:742)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\norg.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:127)\norg.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:91)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:119)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.rememberme.RememberMeAuthenticationFilter.doFilter(RememberMeAuthenticationFilter.java:150)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:170)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter.doFilter(AbstractAuthenticationProcessingFilter.java:200)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.csrf.CsrfFilter.doFilterInternal(CsrfFilter.java:100)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:66)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\norg.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\norg.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\norg.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:357)\norg.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:270)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:99)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.HttpPutFormContentFilter.doFilterInternal(HttpPutFormContentFilter.java:109)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.HiddenHttpMethodFilter.doFilterInternal(HiddenHttpMethodFilter.java:81)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:200)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\norg.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:198)\norg.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:96)\norg.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:496)\norg.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:140)\norg.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:81)\norg.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:87)\norg.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:342)\norg.apache.coyote.http11.Http11Processor.service(Http11Processor.java:803)\norg.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:66)\norg.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:790)\norg.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1468)\norg.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\njava.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\njava.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\norg.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\njava.lang.Thread.run(Thread.java:748)\n', 'java.lang.RuntimeException', '{}', '2020-10-07 15:52:47', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.HelloController.exTest', '/ex', '', '未登录用户', '2308');

-- ----------------------------
-- Table structure for link_management
-- ----------------------------
DROP TABLE IF EXISTS `link_management`;
CREATE TABLE `link_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sys_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `center_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of link_management
-- ----------------------------
INSERT INTO `link_management` VALUES (1, '北京供暖数据总览', 'http://jcny.jy100.com:30099/cAdmin/index.html', '2020-11-04 16:00:00', 112);
INSERT INTO `link_management` VALUES (2, '兰州能管平台', 'http://xcgl.jy100.com', '2020-10-01 16:00:00', 110);
INSERT INTO `link_management` VALUES (6, '北京能管平台', 'http://jcgl.jy100.com', '2020-10-09 16:00:00', 110);
INSERT INTO `link_management` VALUES (10, '沈阳能管平台', 'http://ptgl.jy100.com', '2020-10-29 16:00:00', 111);
INSERT INTO `link_management` VALUES (11, '西宁能管平台', 'http://www.kugou.com/', '2020-10-19 16:00:00', 110);
INSERT INTO `link_management` VALUES (12, '北京分时控制', 'https://www.jd.com/', '2020-10-12 16:00:00', 107);
INSERT INTO `link_management` VALUES (14, '沈阳分时控制', 'http://taobao.com/', '2020-09-30 16:00:00', 108);
INSERT INTO `link_management` VALUES (16, '兰州分时控制', 'https://www.bilibili.com/', '2020-10-12 16:00:00', 109);
INSERT INTO `link_management` VALUES (17, '天水分时控制', 'https://mail.google.com/mail/u/0/', '2020-10-19 16:00:00', 107);
INSERT INTO `link_management` VALUES (30, 'baidu', 'http://baidu.com', '2020-11-02 06:15:58', 107);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `oper_create_time` datetime NOT NULL,
  `oper_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_modul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_requ_param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `oper_resp_param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `oper_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oper_ver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (8, '2020-10-07 15:40:21', '查看当前所有用户', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.AdminController.listUsers', '管理员模块', '{}', '{\"empty\":false,\"model\":{\"model\":{\"list\":[{\"name\":\"用户管理\",\"url\":\"/users\"}]}},\"modelMap\":{\"$ref\":\"$.model\"},\"reference\":true,\"viewName\":\"/admins/index\"}', '查看所有用户', '/admins', '1', 'admin', '2308');
INSERT INTO `log` VALUES (9, '2020-10-07 15:41:08', '健康测试', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.HelloController.hello', '健康测试', '{}', '\"Hello World! Welcome to visit waylau.com!\"', '健康测试get请求', '/hello', '', '未登录用户', '2308');
INSERT INTO `log` VALUES (10, '2020-10-07 15:41:45', '健康测试', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.HelloController.hello', '健康测试', '{}', '\"Hello World! Welcome to visit waylau.com!\"', '健康测试get请求', '/hello', '', '未登录用户', '2308');
INSERT INTO `log` VALUES (11, '2020-10-07 15:42:44', '健康测试', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.HelloController.hello', '健康测试', '{}', '\"Hello World! Welcome to visit waylau.com!\"', '健康测试get请求', '/hello', '', '未登录用户', '2308');
INSERT INTO `log` VALUES (12, '2020-10-07 15:52:38', '健康测试', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.HelloController.hello', '健康测试', '{}', '\"Hello World! Welcome to visit waylau.com!\"', '健康测试get请求', '/hello', '', '未登录用户', '2308');
INSERT INTO `log` VALUES (13, '2020-10-07 16:01:06', '健康测试', '113.110.102.27', 'com.example.blog.controller.HelloController.hello', '健康测试', '{}', '\"Hello World! Welcome to visit waylau.com!\"', '健康测试get请求', '/hello', '', '未登录用户', '2308');
INSERT INTO `log` VALUES (14, '2020-10-07 16:02:04', '查看当前所有用户', '113.110.102.27', 'com.example.blog.controller.AdminController.listUsers', '管理员模块', '{}', '{\"empty\":false,\"model\":{\"model\":{\"list\":[{\"name\":\"用户管理\",\"url\":\"/users\"}]}},\"modelMap\":{\"$ref\":\"$.model\"},\"reference\":true,\"viewName\":\"/admins/index\"}', '查看所有用户', '/admins', '1', 'admin', '2308');
INSERT INTO `log` VALUES (15, '2020-10-08 02:38:37', '获取主页', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.MainController.root', '主控制模块', '{}', '\"redirect:/index\"', 'get', '/', '', '未登录用户', '2308');
INSERT INTO `log` VALUES (16, '2020-10-08 02:38:38', '获取博客主页', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.MainController.index', '主控制模块', '{}', '\"redirect:/blogs\"', 'get', '/index', '', '未登录用户', '2308');
INSERT INTO `log` VALUES (17, '2020-10-08 02:38:38', '根据关键词查找博客，按最新或者最热排序', '0:0:0:0:0:0:0:1', 'com.example.blog.controller.BlogController.listEsBlogs', '博客管理模块', '{}', '\"/index\"', '查找博客', '/blogs', '', '未登录用户', '2308');

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins`  (
  `series` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登陆账号',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'cookie令牌',
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`series`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'persistent_logins表，用户实现记住我功能' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------
INSERT INTO `persistent_logins` VALUES ('6xxOIQo3zZR1nqBJQ8YriA==', 'abc', 'B3s/6HnQbDgvmoAxEIWYVQ==', '2020-10-12 16:19:18');
INSERT INTO `persistent_logins` VALUES ('9GonTL8cZMv2jV9VDW1kBA==', 'admin', '5Bu02SVKvvyWwm5UNAfTwQ==', '2020-11-02 03:03:51');
INSERT INTO `persistent_logins` VALUES ('b/8AW6eJIj7bbKOusKu4yA==', 'admin', 'wmhweI3fKMh7ekKBfOyebg==', '2020-11-01 06:04:19');
INSERT INTO `persistent_logins` VALUES ('B6Ma017bYcZknkbYc1UaWA==', 'admin', '0sJJT+oEjDxKEsHIBtwcWA==', '2020-11-02 03:05:41');
INSERT INTO `persistent_logins` VALUES ('BrdZXt0RiNI5vJhiE7yr1Q==', 'rjqamdaflf', 'vZKIqOBP4fQRrK7XO/WSCQ==', '2020-11-01 15:40:01');
INSERT INTO `persistent_logins` VALUES ('F7vMU4VDadnS78qJXncuGA==', 'admin', 'LP/I3l3K6orH21VQe2YyFA==', '2020-11-01 06:02:22');
INSERT INTO `persistent_logins` VALUES ('g5J1DOA4KzXNGIAFK+1FBw==', 'admin', 'OsyO2mA1VlhO1qpDcn04TA==', '2020-11-01 07:45:32');
INSERT INTO `persistent_logins` VALUES ('mWwe8I3wgf0E7O2VRwAttg==', 'admin', 'D70b3D3Z9KMak8wWZ58quQ==', '2020-11-02 04:19:38');
INSERT INTO `persistent_logins` VALUES ('Q4iCrsNYAbtO3Fr0vqev2g==', 'admin', 'AZ/EpGZ6XG24982qYpGgcw==', '2020-11-02 07:10:58');
INSERT INTO `persistent_logins` VALUES ('QXWJCdEFhcna0QNKqmvVJQ==', 'admin', 'Dgd7+Lv2lZ020DhmoH381Q==', '2020-11-02 10:52:41');
INSERT INTO `persistent_logins` VALUES ('rmEOe4Zmip+Q1S3kAtWbpw==', 'admin', 'gZh2bsbBx9TTq54iD4TVeQ==', '2020-11-02 03:47:04');
INSERT INTO `persistent_logins` VALUES ('shDbPJyTS/h2Gc+pAdYEgQ==', 'admin', '1PcXABZ/vwdpATOaAsfFZQ==', '2020-11-02 04:02:18');
INSERT INTO `persistent_logins` VALUES ('SziWR09FZivLGL6eayIQoA==', 'admin', '8WfLVS2haV17q0DCtOBEeQ==', '2020-11-02 03:47:05');
INSERT INTO `persistent_logins` VALUES ('uKAOhTwmY+nZvdONOAPSAQ==', 'admin', 'XiMEfx0rnUzfUhaXZst4Lg==', '2020-11-02 04:02:20');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menu_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单路径',
  `menu_parent_id` int(11) NULL DEFAULT NULL COMMENT '上级id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `menu_english` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '链接管理', '/sys/link/', NULL, '2020-10-19 18:20:15', '2020-10-19 18:20:20', 'link');
INSERT INTO `sys_menu` VALUES (2, '中心管理', '/sys/link/center', 1, '2020-10-19 18:21:22', '2020-10-19 18:21:23', 'link_center');
INSERT INTO `sys_menu` VALUES (3, '链接管理', '/sys/link/link', 1, '2020-10-21 18:22:10', '2020-10-29 18:22:12', 'link_link');
INSERT INTO `sys_menu` VALUES (4, '客户端管理', '/sys/link/app', 1, '2020-10-13 18:22:29', '2020-10-21 18:22:33', 'link_app');
INSERT INTO `sys_menu` VALUES (5, '系统管理', '/sys/system/', NULL, '2020-10-13 20:25:37', '2020-10-22 20:25:40', 'system');
INSERT INTO `sys_menu` VALUES (6, '系统公告', '/sys/system/notice', 5, '2020-10-19 20:26:20', '2020-10-19 20:26:22', 'system_notice');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_time` datetime NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `show_flag` smallint(255) NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (2, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf8877', 1, '2020-10-19 14:33:57');
INSERT INTO `sys_notice` VALUES (3, '33555247ddd', '2020-10-15 22:58:10', '857745', 0, '2020-10-19 15:39:57');
INSERT INTO `sys_notice` VALUES (4, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf8877', 0, '2020-10-19 14:33:57');
INSERT INTO `sys_notice` VALUES (5, '33555247', '2020-10-15 22:58:10', '857745', 0, '2020-10-23 22:58:15');
INSERT INTO `sys_notice` VALUES (6, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf887784411', 0, '2020-10-19 15:40:09');
INSERT INTO `sys_notice` VALUES (7, 'jingyuan', '2020-10-15 22:58:10', '857745', 1, '2020-11-02 06:16:50');
INSERT INTO `sys_notice` VALUES (9, '33555247jkfkoejwoiqjfiojewiojfiowjqf', '2020-10-15 22:58:10', '857745', 0, '2020-10-31 13:36:07');
INSERT INTO `sys_notice` VALUES (10, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioeji4jijfjjeiowjqwjqf8877', 0, '2020-10-19 15:40:12');
INSERT INTO `sys_notice` VALUES (11, '33555247jojiojfoiqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2020-10-15 22:58:10', '857745', 0, '2020-10-31 14:23:06');
INSERT INTO `sys_notice` VALUES (12, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf887754', 1, '2020-10-19 15:57:44');
INSERT INTO `sys_notice` VALUES (13, 'sn加油', '2020-10-15 22:58:10', 's10', 0, '2020-10-31 13:36:45');
INSERT INTO `sys_notice` VALUES (14, '哈哈哈哈Dnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-carouselnotice-c555555555555555555555555arouselnotice-carouselnotice-car', '2020-10-19 14:31:09', 'sfjjfioejiwjqf昌就覅耳机你8877', 1, '2020-10-19 15:40:17');
INSERT INTO `sys_notice` VALUES (15, '33555247', '2020-10-15 22:58:10', '857745', 1, '2020-10-23 22:58:15');
INSERT INTO `sys_notice` VALUES (16, 'jfioejwqoijfijewfjiwqjfijweiofjid fjoiew jiqfojweoi fi9jweoi fjwq oifj wqof', '2020-10-31 14:21:55', 'jfiojiewjiqfjoi', 0, '2020-10-31 14:21:55');
INSERT INTO `sys_notice` VALUES (17, '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', '2020-10-31 14:22:09', '111111111111111111111111111111', 0, '2020-10-31 14:22:09');
INSERT INTO `sys_notice` VALUES (18, 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2020-10-31 14:22:57', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqfkoiejwifiojweqiojfiowjeifjwqijefqowij', 0, '2020-10-31 14:41:41');
INSERT INTO `sys_notice` VALUES (19, 'abcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabcabc', '2020-11-02 06:21:19', 'abc', 1, '2020-11-02 10:53:00');
INSERT INTO `sys_notice` VALUES (20, 'fjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjssjfojieowjqijfijisjokfjiowjifjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjssjfojieowjqijfijisjokfjiowjifjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjfjewioqjiofpjssjfojieowjqijfijisjokfjiowji', '2020-11-02 10:53:27', 'jfoijewijqifj', 1, '2020-11-02 10:53:27');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_ob8kqyqqgmefl0aco34akdtpe`(`email`) USING BTREE,
  UNIQUE INDEX `UK_sb8bbouer5wak8vyiiy4pf2bx`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 'i@waylau.com', 'rjqamdaflf', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'rjqamdaflf');
INSERT INTO `user` VALUES (2, NULL, 'waylau@waylau.com', 'Way Lau', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', 'abc');
INSERT INTO `user` VALUES (7, NULL, 'fewqfweqf@qq.ocm', 'admin', '$2a$10$k3JkbgABSwPFdWNg.2wv4eJU2aEW9oDNc3eQmxIDaKWFz70y6voru', 'admin');
INSERT INTO `user` VALUES (8, NULL, 'fqwfeweqfwqf', 'fewqfweqf', '$2a$10$uotAXcVBD6ROIfKIqbK40udc5NDq74l6MVm2p8FZR617PSPike6OC', 'aaa');
INSERT INTO `user` VALUES (9, NULL, '2qjfiewjfjw@qq.com', 'ffffff', '$2a$10$JSJP.ZKUUtUQwoHTm6w7VeG.W3EbmdhXPcX128oJOc5aJ3KnMcvLW', 'ffffff');

-- ----------------------------
-- Table structure for user_authority
-- ----------------------------
DROP TABLE IF EXISTS `user_authority`;
CREATE TABLE `user_authority`  (
  `user_id` bigint(20) NOT NULL,
  `authority_id` bigint(20) NOT NULL,
  INDEX `FKgvxjs381k6f48d5d2yi11uh89`(`authority_id`) USING BTREE,
  INDEX `FKpqlsjpkybgos9w2svcri7j8xy`(`user_id`) USING BTREE,
  CONSTRAINT `FKgvxjs381k6f48d5d2yi11uh89` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKpqlsjpkybgos9w2svcri7j8xy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_authority
-- ----------------------------
INSERT INTO `user_authority` VALUES (1, 1);
INSERT INTO `user_authority` VALUES (2, 2);
INSERT INTO `user_authority` VALUES (1, 2);

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKcsaksoe2iepaj8birrmithwve`(`user_id`) USING BTREE,
  CONSTRAINT `FKcsaksoe2iepaj8birrmithwve` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vote
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
