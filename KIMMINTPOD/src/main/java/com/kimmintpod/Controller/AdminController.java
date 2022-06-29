package com.kimmintpod.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.kimmintpod.Converter.ProductsConverter;
import com.kimmintpod.Entity.Products;
import com.kimmintpod.Repository.AccountsRepository;
import com.kimmintpod.Repository.BrandsRepository;
import com.kimmintpod.Repository.ProductRepository;
import com.kimmintpod.Service.FileService;
import com.kimmintpod.Service.SessionService;

import java.io.File;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	SessionService session;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	AccountsRepository accountsRepository;
	@Autowired
	BrandsRepository brandsRepository;
	@Autowired
	HttpServletRequest request;
	@Autowired
	FileService fileService;

	@GetMapping
	public String LoadAdminpage() {
		return "adminpage";
	}

	@GetMapping("/Page/AccountPage")
	public String LoadAccountpage() {
		return "page/AccountsPage";
	}

	@RequestMapping("/Page/ProductPage")
	public String ProductPage(@ModelAttribute("product") ProductsConverter product) {
		product = new ProductsConverter();
		return "page/ProductsPage";
	}

	@PostMapping("/Page/ProductPage/add")
	public String AddProduct(@ModelAttribute("product") ProductsConverter product,
			@RequestParam(name = "Image_Pros") MultipartFile multipartFile) {
		product.setImage_Pro("/img/" + multipartFile.getOriginalFilename());
		System.out.println(request.getParameterValues("Charg_Pro")==null?"false":"true");
		product.setCharg_Pro(request.getParameterValues("Charg_Pro")==null?false:true);
		fileService.save(multipartFile, "/img/");
		productRepository.save(new Products(null, product.getName_Pro(), product.getImage_Pro(), product.getPrice_Pro(),
				product.getNic_Pro(), product.getML_Pro(), product.isCharg_Pro(), product.getQTY_Pro(), false, true, 0,
				new Date(), accountsRepository.findById(session.get("ID_Login")).get(),
				brandsRepository.findById(product.getBrand_Pro()).get(), null, null));
		return "redirect:/admin/Page/ProductPage";
	}
	@PostMapping("/Page/ProductPage/update")
	public String UpdateProduct(@ModelAttribute("product") ProductsConverter product,
			@RequestParam(name = "Image_Pros") MultipartFile multipartFile) {
		product.setImage_Pro("/img/" + multipartFile.getOriginalFilename());
		System.out.println(request.getParameterValues("Charg_Pro")==null?"false":"true");
		product.setCharg_Pro(request.getParameterValues("Charg_Pro")==null?false:true);
		fileService.save(multipartFile, "/img/");
		productRepository.save(new Products(product.getID_Pro(), product.getName_Pro(), product.getImage_Pro(), product.getPrice_Pro(),
				product.getNic_Pro(), product.getML_Pro(), product.isCharg_Pro(), product.getQTY_Pro(), false, true, 0,
				new Date(), accountsRepository.findById(session.get("ID_Login")).get(),
				brandsRepository.findById(product.getBrand_Pro()).get(), null, null));
		return "redirect:/admin/Page/ProductPage";
	}
}
