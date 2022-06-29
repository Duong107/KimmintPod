package com.kimmintpod.Converter;

import java.util.Date;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccountsConverter {
	private String Username;
	private String Password;
	private String Fullname;
	private String PhoneNumber;
	private String Location;
	private String Email;
	private boolean activated;
	private String Avatar;
	private Date DateCre;
	private boolean Admin;
}
