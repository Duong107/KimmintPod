package com.kimmintpod.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("Error")
@Controller
public class ErrorController {
	@RequestMapping()
	public String page(@RequestParam("ref") String ref) {
		switch (ref) {
		case "500":
			return "500page";
		case "401":
			return "401page";
		case "404":
			return "404page";
		default:
			return "404page";
		}
	}
}
