package ua.nikita.testserverless.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import static java.lang.String.format;

@RestController
@RequestMapping("/hello")
public class HelloWorldController {

	@GetMapping
	public String sayHello(@RequestParam final String name) {
		return format("Hello, %s", name);
	}
}
