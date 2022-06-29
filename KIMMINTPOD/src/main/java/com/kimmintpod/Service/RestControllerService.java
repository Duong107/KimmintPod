package com.kimmintpod.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.kimmintpod.Converter.*;
import com.kimmintpod.Entity.*;
import com.kimmintpod.Repository.*;

import java.io.File;
import java.security.NoSuchAlgorithmException;
import java.util.*;

@RestController
@RequestMapping("API")
public class RestControllerService {
	@Autowired
	ConvertService convertService;
	@Autowired
	SessionService session;
	@Autowired
	CookieService cookieService;
	@Autowired
	CartRepository cartRepository;
	@Autowired
	AccountsRepository accountsRepository;
	@Autowired
	ProductRepository productRepository;

//	Account API
	@GetMapping("/ListAccount")
	public List<AccountsConverter> GetListAccounts() throws JsonProcessingException, NoSuchAlgorithmException {
//		if (session.get("ID").equals("Admin")) {
		return convertService.GetListAccounts();
//		}
//		return null;
	}

	@GetMapping("/GetAccount")
	public AccountsConverter GetAccount(@RequestParam("u") String user, @RequestParam("p") String pass)
			throws JsonProcessingException, NoSuchAlgorithmException {
		for (AccountsConverter accountsConverter : convertService.GetListAccounts()) {
			if (accountsConverter.getUsername().equals(user)) {
				if (accountsConverter.getPassword().equals(DigestUtils.md5DigestAsHex(pass.getBytes()).toUpperCase())) {
					return accountsConverter;
				}
			}
		}
		return null;
	}

	@GetMapping("/Register")
	public boolean Register(@RequestParam("u") String user, @RequestParam("p") String pass)
			throws JsonProcessingException, NoSuchAlgorithmException {
		try {
			accountsRepository.save(new Accounts(user, pass, "fullname", "0123456789", "null", "example@email.com",
					"/img/admin.jpg", true, new Date(), false, null, null, null, null, null));
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	@GetMapping("/UpdateAccount")
	public boolean UpdateAccount(@RequestParam("u") String user, @RequestParam("fn") String fullname,
			@RequestParam("ph") String phone, @RequestParam("email") String email, @RequestParam("lo") String Location,
			@RequestParam("ava") String avatar, @RequestParam("role") boolean role)
			throws JsonProcessingException, NoSuchAlgorithmException {
		try {
			Accounts up = accountsRepository.findById(user).get();
			up.setFullname(fullname);
			up.setAvatar(avatar);
			up.setPhoneNumber(phone);
			up.setEmail(email);
			up.setLocation(Location);
			up.setAdmin(role);
			accountsRepository.save(up);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	@GetMapping("/DeleteAccount")
	public boolean DeleteAccount(@RequestParam("u") String user)
			throws JsonProcessingException, NoSuchAlgorithmException {
		try {
			Accounts up = accountsRepository.findById(user).get();
			up.setActivated(false);
			accountsRepository.save(up);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	@GetMapping("/DeleteProd")
	public boolean DeleteProd(@RequestParam("p") int p) throws JsonProcessingException, NoSuchAlgorithmException {
		try {
			Products up = productRepository.findById(p).get();
			up.setActivated(false);
			productRepository.save(up);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	@GetMapping("/UpdateAccount2")
	public boolean UpdateAccount2(@RequestParam("u") String user, @RequestParam("fn") String fullname,
			@RequestParam("pas") String pass, @RequestParam("ph") String phone, @RequestParam("email") String email,
			@RequestParam("lo") String Location, @RequestParam("ava") String avatar, @RequestParam("role") boolean role)
			throws JsonProcessingException, NoSuchAlgorithmException {
		try {
			Accounts up = accountsRepository.findById(user).get();
			up.setFullname(fullname);
			up.setAvatar(avatar);
			up.setPhoneNumber(phone);
			up.setPassword(pass);
			up.setEmail(email);
			up.setLocation(Location);
			up.setAdmin(role);
			accountsRepository.save(up);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}

	@GetMapping("ChangePass")
	public boolean Changepass(@RequestParam("pass") String pass, @RequestParam("newpass") String newpass) {
		Accounts fg = accountsRepository.findById(session.get("ID_Login")).get();
		System.out.println(session.get("ID_Login") + ":" + fg.getPassword());
		if (pass.equalsIgnoreCase(fg.getPassword())) {
			fg.setPassword(newpass);
			accountsRepository.save(fg);
			return true;
		}
		return false;
	}

	@GetMapping("/CheckAccount")
	public boolean CheckAccountLogin(@RequestParam("u") String user, @RequestParam("p") String pass,
			@RequestParam("r") String remember) throws JsonProcessingException, NoSuchAlgorithmException {
		for (AccountsConverter accountsConverter : convertService.GetListAccounts()) {
			if (accountsConverter.getUsername().equals(user)) {
				if (accountsConverter.getPassword().equals(DigestUtils.md5DigestAsHex(pass.getBytes()).toUpperCase())) {
					session.set("ID_Login", accountsConverter.getUsername());
					session.set("Role", accountsConverter.isAdmin());
					cookieService.add("IsLogin", "true", 2400);
					cookieService.add("us", user, 2400);
					cookieService.add("pw", pass, 2400);
					if (remember.equals("true")) {
						System.out.println(remember);
						cookieService.add("remember", "true", 2400);
					}
					if (remember.equals("false")) {
						cookieService.add("remember", "false", 2400);
					}
					return true;
				}
			}
		}
		return false;
	}

	@GetMapping("/LogOut")
	public void LogOut() {
		session.remove("ID_Login");
		session.set("Role", false);
		cookieService.remove("IsLogin");
		if (cookieService.getValue("remember").equals("true") == false) {
			cookieService.remove("us");
			cookieService.remove("pw");
		}
	}

//	Products API
	@GetMapping("/ListProduct")
	public List<ProductsConverter> GetListProducts() throws JsonProcessingException, NoSuchAlgorithmException {
		return convertService.GetListProduct();
	}

	@GetMapping("/GetProduct")
	public ProductsConverter GetProducts(@RequestParam("p") int p)
			throws JsonProcessingException, NoSuchAlgorithmException {
		for (ProductsConverter productsConverter : convertService.GetListProduct()) {
			if (productsConverter.getID_Pro().equals(p)) {
				return productsConverter;
			}
		}
		return null;
	}

// BLOG API
	@GetMapping("/ListBLOG")
	public List<BLOGConverter> GetListBLOG() throws JsonProcessingException, NoSuchAlgorithmException {
		return convertService.GetListBlog();
	}

	@GetMapping("/GetBLOG")
	public BLOGConverter GetBLOG(@RequestParam("b") String b) throws JsonProcessingException, NoSuchAlgorithmException {
		for (BLOGConverter BLOGConverter : convertService.GetListBlog()) {
			if (BLOGConverter.getID_BLOG().equals(b)) {
				return BLOGConverter;
			}
		}
		return null;
	}

// CART API
	@GetMapping("/ListCart")
	public List<CartsConverter> GetListCART() throws JsonProcessingException, NoSuchAlgorithmException {
		ArrayList<CartsConverter> list = new ArrayList<CartsConverter>();
		for (CartsConverter cartsConverter : convertService.GetListCart()) {
			if (cartsConverter.isPuchases() == false) {
				list.add(cartsConverter);
			}
		}
		return list;
	}

	@GetMapping("/ListCartpuchases")
	public List<CartsConverter> GetListCARTPuchases() throws JsonProcessingException, NoSuchAlgorithmException {
		ArrayList<CartsConverter> list = new ArrayList<CartsConverter>();
		for (CartsConverter cartsConverter : convertService.GetListCart()) {
			list.add(cartsConverter);
		}
		return list;
	}

	@GetMapping("/ListCartBy")
	public List<ProductsConverter> GetListCARTby() throws JsonProcessingException, NoSuchAlgorithmException {
		return convertService.GetListCartby(session.get("ID_Login"));
	}

	@GetMapping("/ListCartbyu")
	public List<ProductsConverter> GetListCARTbyuse() throws JsonProcessingException, NoSuchAlgorithmException {
		return convertService.GetListCartOriginal(session.get("ID_Login"));
	}

	@GetMapping("/ListPayBy")
	public List<ProductsConverter> GetListPayby(@RequestParam("u") String u)
			throws JsonProcessingException, NoSuchAlgorithmException {
		return convertService.GetListPayby(u);
	}

	@GetMapping("/AddCart")
	public boolean addToCart(@RequestParam("p") int p, @RequestParam("u") String u, @RequestParam("qty") int qty)
			throws JsonProcessingException {
		Optional<Accounts> e = accountsRepository.findById(u);
		Optional<Products> pr = productRepository.findById(p);
		try {
			for (CartsConverter cartsConverter : convertService.GetListCart()) {
				if (cartsConverter.getID_User().equals(u) && cartsConverter.getID_Pro().equals(p)
						&& cartsConverter.isPuchases() == false) {
					Optional<Carts> c = cartRepository.findById(cartsConverter.getID_Cart());
					Carts cx = c.get();
					cx.setQTY(cx.getQTY() + 1);
					cartRepository.save(cx);
					return true;
				}
			}
			cartRepository.save(new Carts(null, qty, new Date(), false, e.get(), pr.get()));
		} catch (Exception e2) {
			return false;
		}
		return true;
	}

	@GetMapping("/UpdateQTYCart")
	public void updatecart(@RequestParam("p") int p, @RequestParam("qty") int qty) throws JsonProcessingException {
		Optional<Carts> c = cartRepository.findById(p);
		Carts cx = c.get();
		cx.setQTY(qty);
		cartRepository.save(cx);
	}

	@GetMapping("/Pay")
	public boolean Pay(@RequestParam("p") int p) throws JsonProcessingException {
		Optional<Carts> c = cartRepository.findById(p);
		Carts cx = c.get();
		cx.setPuchases(true);
		cartRepository.save(cx);
		Products x = productRepository.findById(cx.getID_Pro().getID_Pro()).get();
		x.setAmount(x.getAmount() + cx.getQTY());
		productRepository.save(x);
		return true;
	}

	@GetMapping("/Dropallcart")
	public void dropallcart() {
		cartRepository.deleteAll();
	}

	@GetMapping("/ListBrand")
	public List<BrandsConverter> GetListBrand() throws JsonProcessingException {
		return convertService.GetListBrand();
	}
}
