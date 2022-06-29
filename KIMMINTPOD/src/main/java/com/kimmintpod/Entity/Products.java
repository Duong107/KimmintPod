package com.kimmintpod.Entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.*;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table
public class Products implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID_Pro")
	private Integer ID_Pro;
	@Column(name = "Name_Pro")
	private String Name_Pro;
	@Column(name = "Image_Pro")
	private String Image_Pro;
	@Column(name = "Price_Pro")
	private double Price_Pro;
	@Column(name = "Nic_Pro")
	private double Nic_Pro;
	@Column(name = "ML_Pro")
	private double ML_Pro;
	@Column(name = "Charg_Pro")
	private Boolean Charg_Pro;
	@Column(name = "QTY_Pro")
	private int QTY_Pro;
	@Column(name = "soldout")
	private boolean SoldOut;
	@Column(name = "Activated")
	private boolean Activated;
	@Column(name = "Amount")
	private int Amount;
	@Column(name = "datecre")
	@Temporal(TemporalType.DATE)
	private Date DateCre;
	@JoinColumn(name = "User_Pro", referencedColumnName = "Username")
	@ManyToOne(optional = false)
	private Accounts User_Pro;
	@JoinColumn(name = "Brand_Pro", referencedColumnName = "ID_Brand")
	@ManyToOne(optional = false)
	private Brands Brand_Pro;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "ID_ProVote")
	private Collection<ProductsVote> productVoteCollection;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "ID_Pro")
	private Collection<Carts> cartsCollection;
}
