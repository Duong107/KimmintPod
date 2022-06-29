package com.kimmintpod.Entity;

import javax.persistence.*;
import lombok.*;
import java.io.Serializable;
import java.util.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Accounts")
public class Accounts implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "Username")
	private String Username;
	@Column(name = "Password")
	private String Password;
	@Column(name = "Fullname")
	private String Fullname;
	@Column(name = "phonenumber")
	private String PhoneNumber;
	@Column(name = "Location")
	private String Location;
	@Column(name = "Email")
	private String Email;
	@Column(name = "Avatar")
	private String Avatar;
	@Column(name = "activated")
	private boolean Activated;
	@Column(name = "datecre")
	private Date DateCre;
	@Column(name = "Admin")
	private boolean Admin;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "User_Pro")
	private Collection<Products> productsCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "User_Brand")
	private Collection<Brands> brandsCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "User_Vote")
	private Collection<ProductsVote> productVoteCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "ID_User")
	private Collection<BLOG> blogCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "ID_User")
	private Collection<Carts> cartsCollection;
}
