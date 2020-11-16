package com.example.demo.condition;

import org.springframework.context.annotation.Condition;
import org.springframework.context.annotation.ConditionContext;
import org.springframework.core.type.AnnotatedTypeMetadata;

import java.util.Objects;

/**
 * @program: file-upload
 * @ClassName: WindowsCondition
 * @Description:
 * @Author: 842712494@qq.com
 * @Date: 2020/11/15 18:51
 * @Version: 1.0.0
 */
public class WindowsCondition implements Condition {
    @Override
    public boolean matches(ConditionContext conditionContext, AnnotatedTypeMetadata annotatedTypeMetadata) {
        return Objects.requireNonNull(conditionContext.getEnvironment().getProperty("os.name")).contains("Windows");
    }
}
