package com.example.config;

import org.springframework.context.annotation.*;

@Configuration
@ComponentScan("com.example")
@PropertySource("classpath:jdbc.properties")

@EnableAspectJAutoProxy
@Import({JdbcConfig.class, MybatisConfig.class})
//@EnableTransactionManagement
public class SpringConfig {
}
