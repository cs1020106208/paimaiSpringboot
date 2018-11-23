package com.baizhi;


import com.google.code.kaptcha.Producer;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.Properties;


@MapperScan(value = "com.baizhi.dao")
@SpringBootApplication
public class App{
    public static void main(String[] args) {

        SpringApplication.run(App.class,args);
    }


    @Bean
    public Config getConfig(){
        Properties properties = new Properties();
        properties.setProperty("kaptcha.textproducer.char.length","4");
        Config config = new Config(properties);
        return config;
    }
@Bean
public Producer getProducer(){
    DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
    defaultKaptcha.setConfig(getConfig());
    return defaultKaptcha;
}





}
