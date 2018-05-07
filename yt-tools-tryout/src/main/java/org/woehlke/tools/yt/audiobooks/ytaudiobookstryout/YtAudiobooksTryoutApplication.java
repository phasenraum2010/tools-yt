package org.woehlke.tools.yt.audiobooks.ytaudiobookstryout;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@EnableAutoConfiguration
//@SpringBootApplication
public class YtAudiobooksTryoutApplication {

    @RequestMapping("/")
    @ResponseBody
    String home() {
        return "Hello World!";
    }

	public static void main(String[] args) {
		SpringApplication.run(YtAudiobooksTryoutApplication.class, args);
	}
}
