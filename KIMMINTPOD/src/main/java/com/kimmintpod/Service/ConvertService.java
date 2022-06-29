package com.kimmintpod.Service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.*;

import javax.xml.bind.DatatypeConverter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.*;
import com.kimmintpod.Converter.*;
import com.kimmintpod.Entity.*;
import com.kimmintpod.Repository.*;

@Service
public class ConvertService {
	@Autowired
	AccountsRepository accountsRepository;
	@Autowired
	BLOGRepository blogRepository;
	@Autowired
	BrandsRepository brandsRepository;
	@Autowired
	CartRepository cartRepository;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	ProductVoteRepository productVoteRepository;

//	Account List
	public ArrayList<AccountsConverter> GetListAccounts() throws JsonProcessingException, NoSuchAlgorithmException {
		List<Accounts> list = accountsRepository.findAll();
		ArrayList<AccountsConverter> listConvert = new ArrayList<AccountsConverter>();
		for (Accounts account : list) {
			if (account.isActivated()) {
				listConvert.add(new AccountsConverter(account.getUsername(),
						DigestUtils.md5DigestAsHex(account.getPassword().getBytes()).toUpperCase(),
						account.getFullname(), account.getPhoneNumber(), account.getLocation(), account.getEmail(),account.isActivated(),
						account.getAvatar(), account.getDateCre(), account.isAdmin()));
			}
		}
		return listConvert;
	}

//	Blog List
	public ArrayList<BLOGConverter> GetListBlog() throws JsonProcessingException {
		List<BLOG> list = blogRepository.findAll();
		ArrayList<BLOGConverter> listConvert = new ArrayList<BLOGConverter>();
		for (BLOG blog : list) {
			listConvert.add(new BLOGConverter(blog.getID_BLOG(), blog.getTITLE(), blog.getSUBJ(), blog.getBODY(),
					blog.getDateCre(), blog.isHIDE(), blog.getID_User().getUsername()));
		}
		return listConvert;
	}

//	Products List
	public ArrayList<ProductsConverter> GetListProduct() throws JsonProcessingException {
		List<Products> list = productRepository.findAll();
		ArrayList<ProductsConverter> listConvert = new ArrayList<ProductsConverter>();
		for (Products products : list) {
			if (products.isActivated()) {
				listConvert.add(new ProductsConverter(products.getID_Pro(), products.getName_Pro(),
						products.getImage_Pro(), products.getPrice_Pro(), products.getNic_Pro(), products.getNic_Pro(),
						products.getCharg_Pro(), products.getQTY_Pro(), products.isSoldOut(), products.isActivated(),
						products.getAmount(), products.getDateCre(), products.getUser_Pro().getUsername(),
						products.getBrand_Pro().getID_Brand()));
			}
		}
		return listConvert;
	}

//	Cart List
	public ArrayList<CartsConverter> GetListCart() throws JsonProcessingException {
		List<Carts> list = cartRepository.findAll();
		ArrayList<CartsConverter> listConvert = new ArrayList<CartsConverter>();
		for (Carts carts : list) {
			listConvert.add(new CartsConverter(carts.getID_Cart(), carts.getQTY(), carts.getDateCre(),
					carts.isPuchases(), carts.getID_User().getUsername(), carts.getID_Pro().getID_Pro()));
		}
		return listConvert;
	}

	public ArrayList<ProductsConverter> GetListCartby(String user) throws JsonProcessingException {
		List<Carts> list = cartRepository.findAll();
		ArrayList<CartsConverter> listConvert = new ArrayList<CartsConverter>();
		ArrayList<ProductsConverter> listPconvert = new ArrayList<ProductsConverter>();
		for (Carts carts : list) {
			if (user.equals(carts.getID_User().getUsername()) && carts.isPuchases() == false) {
				listConvert.add(new CartsConverter(carts.getID_Cart(), carts.getQTY(), carts.getDateCre(),
						carts.isPuchases(), carts.getID_User().getUsername(), carts.getID_Pro().getID_Pro()));
			}
		}
		for (CartsConverter cartsConverter : listConvert) {
			Products products = productRepository.findById(cartsConverter.getID_Pro()).get();
			listPconvert.add(new ProductsConverter(cartsConverter.getID_Cart(), products.getName_Pro(),
					products.getImage_Pro(), products.getPrice_Pro(), products.getNic_Pro(), products.getNic_Pro(),
					products.getCharg_Pro(), cartsConverter.getQTY(), products.isSoldOut(), products.isActivated(),
					products.getAmount(), products.getDateCre(), products.getUser_Pro().getUsername(),
					products.getBrand_Pro().getID_Brand()));
		}
		return listPconvert;
	}
	public ArrayList<ProductsConverter> GetListCartOriginal(String user) throws JsonProcessingException {
		List<Carts> list = cartRepository.findAll();
		ArrayList<CartsConverter> listConvert = new ArrayList<CartsConverter>();
		ArrayList<ProductsConverter> listPconvert = new ArrayList<ProductsConverter>();
		for (Carts carts : list) {
			if (user.equals(carts.getID_User().getUsername())) {
				listConvert.add(new CartsConverter(carts.getID_Cart(), carts.getQTY(), carts.getDateCre(),
						carts.isPuchases(), carts.getID_User().getUsername(), carts.getID_Pro().getID_Pro()));
			}
		}
		for (CartsConverter cartsConverter : listConvert) {
			Products products = productRepository.findById(cartsConverter.getID_Pro()).get();
			listPconvert.add(new ProductsConverter(cartsConverter.getID_Cart(), products.getName_Pro(),
					products.getImage_Pro(), products.getPrice_Pro(), products.getNic_Pro(), products.getNic_Pro(),
					products.getCharg_Pro(), cartsConverter.getQTY(), products.isSoldOut(), products.isActivated(),
					products.getAmount(), products.getDateCre(), products.getUser_Pro().getUsername(),
					products.getBrand_Pro().getID_Brand()));
		}
		return listPconvert;
	}
	public ArrayList<ProductsConverter> GetListPayby(String user) throws JsonProcessingException {
		List<Carts> list = cartRepository.findAll();
		ArrayList<CartsConverter> listConvert = new ArrayList<CartsConverter>();
		ArrayList<ProductsConverter> listPconvert = new ArrayList<ProductsConverter>();
		for (Carts carts : list) {
			if (user.equals(carts.getID_User().getUsername()) && carts.isPuchases()) {
				listConvert.add(new CartsConverter(carts.getID_Cart(), carts.getQTY(), carts.getDateCre(),
						carts.isPuchases(), carts.getID_User().getUsername(), carts.getID_Pro().getID_Pro()));
			}
		}
		for (CartsConverter cartsConverter : listConvert) {
			Products products = productRepository.findById(cartsConverter.getID_Pro()).get();
			listPconvert.add(new ProductsConverter(cartsConverter.getID_Cart(), products.getName_Pro(),
					products.getImage_Pro(), products.getPrice_Pro(), products.getNic_Pro(), products.getNic_Pro(),
					products.getCharg_Pro(), cartsConverter.getQTY(), products.isSoldOut(), products.isActivated(),
					products.getAmount(), products.getDateCre(), products.getUser_Pro().getUsername(),
					products.getBrand_Pro().getID_Brand()));
		}
		return listPconvert;
	}
	public ArrayList<BrandsConverter> GetListBrand() throws JsonProcessingException {
		List<Brands> list = brandsRepository.findAll();
		ArrayList<BrandsConverter> listConvert = new ArrayList<BrandsConverter>();
		for (Brands brands : list) {
			listConvert.add(new BrandsConverter(brands.getID_Brand(),brands.getName_Brand(),brands.getImage_Brand(),true,brands.getDateCre(),brands.getUser_Brand().getUsername()));
		}
		return listConvert;
	}

}
