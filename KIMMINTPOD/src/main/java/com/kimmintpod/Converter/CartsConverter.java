package com.kimmintpod.Converter;

import java.util.Date;

import com.kimmintpod.Entity.Products;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartsConverter {
	private Integer ID_Cart;
	private Integer QTY;
	private Date DateCre;
	private boolean Puchases;
	private String ID_User;
	private Integer ID_Pro;
}
