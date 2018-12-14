package com.memory.training.wrkmem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WrkmemApplication /*extends SpringBootServletInitializer*/ {

/*	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(WrkmemApplication.class);
    }*/

	
	public static void main(String[] args) {
		SpringApplication.run(WrkmemApplication.class, args);
	}
	
}
