package com.kimmintpod.Controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.util.IgnorePropertiesUtil.Checker;
import com.kimmintpod.Converter.ProductsConverter;
import com.kimmintpod.Entity.*;
import com.kimmintpod.Repository.*;
import com.kimmintpod.Service.*;

@Controller
@RequestMapping("Home")
public class HomeController {
	@Autowired
	SessionService session;
	@Autowired
	CartRepository cartRepository;
	@Autowired
	CookieService cookieService;
	@Autowired
	AccountsRepository accountsRepository;
	@Autowired
	FileService fileService;

	@GetMapping()
	public String IndexForm() {
		return "index";
	}

	@GetMapping("/About")
	public String AboutForm() {
		return "about";
	}

	@GetMapping("/Product")
	public String ProductForm(ModelMap model){
		return "product";
	}
	
	@GetMapping("/Product/Show")
	public String Productid(@RequestParam("") int prod, ModelMap model){
		model.addAttribute("prod",prod);
		
		return "ProductInfor";
	}

	@GetMapping("/Blog")
	public String BlogForm() {
		return "blog";
	}

	@GetMapping("/Contract")
	public String ContractForm() {
		return "contract";
	}

	@GetMapping("/User")
	public String UserForm() {
		return "userprofile";
	}

	@PostMapping("/User/Upload")
	public String Userupload(@RequestParam("fileupload") MultipartFile multipartFile) throws IOException {
		String fileName = multipartFile.getOriginalFilename();
		fileService.save(multipartFile, "/img/");
		Accounts resave = accountsRepository.findById(cookieService.getValue("us")).get();
		resave.setAvatar("/img/"+fileName);
		accountsRepository.save(resave);
		System.out.println(fileName);
		return "redirect:/Home/User";
	}

	@GetMapping("/Login")
	public String LoginForm(ModelMap model) {
		try {
			if (cookieService.getValue("remember").equals("true")) {
				model.addAttribute("user", cookieService.getValue("us"));
				model.addAttribute("pass", cookieService.getValue("pw"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "SignInSignUp";
	}

	@GetMapping("/Cart")
	public String CartForm() {
		return "cart";
	}

	@GetMapping("/Cart/Delete")
	public String Cartdelete(@RequestParam(name = "p") int id) {
		cartRepository.deleteById(id);
		return "redirect:/Home/Cart";
	}
}
