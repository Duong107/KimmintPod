package com.kimmintpod.Service;

import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.kimmintpod.Converter.*;
import com.kimmintpod.Entity.Accounts;
import com.kimmintpod.Repository.*;
import com.kimmintpod.bean.*;

@RestController
@RequestMapping("Authentication")
public class MailAPIService {
	@Autowired
	MailerService mailer;
	@Autowired
	MathService mathService;
	ArrayList<Captha> CapthaList = new ArrayList<Captha>();
	@Autowired
	ConvertService converter;
	@Autowired
	AccountsRepository accountsRepository;

	@GetMapping("SendCaptha")
	public boolean SendCaptha(@RequestParam("mail") String Email)
			throws JsonProcessingException, NoSuchAlgorithmException, MessagingException {
		System.out.println(Email);
		for (AccountsConverter convert : converter.GetListAccounts()) {
			if (convert.getEmail().equalsIgnoreCase(Email)) {
				int cod = mathService.Raldom6();
				CapthaList.add(new Captha(Email, cod));
				mailer.send(Email, "Mã Xác Nhận Thay Đổi Mật Khẩu", cod + "");
				return true;
			}
		}
		return false;
	}

	@GetMapping("CheckCaptha")
	public boolean CheckCaptha(@RequestParam("mail") String email, @RequestParam("CapthaCode") int Code)
			throws JsonProcessingException, NoSuchAlgorithmException {
		for (Captha captha : CapthaList) {
			if (captha.getEmail().equalsIgnoreCase(email) && captha.getCapthaCode() == Code) {
				CapthaList.remove(captha);
				for (AccountsConverter convert : converter.GetListAccounts()) {
					if (convert.getEmail().equalsIgnoreCase(email)) {
						Accounts fg = accountsRepository.findById(convert.getUsername()).get();
						int newpass = mathService.Raldom6();
						fg.setPassword(newpass + "");
						accountsRepository.save(fg);
						mailer.queue(new MailInfo(captha.getEmail(), "Thông Báo Mật Khẩu Mới!","Xin Chào "+convert.getUsername()+" - Mật Khẩu Mới Của Bạn Là: "+ newpass));
						return true;
					}
				}
			}
		}
		return false;
	}
}
