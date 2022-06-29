package com.kimmintpod.Converter;
import java.util.Date;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductsVoteConverter{
	private Integer ID_Pro;
	private String Name_Pro;
	private String Image_Pro;
	private double Price_Pro;
	private double Nic_Pro;
	private double ML_Pro;
	private Boolean Charg_Pro;
	private int QTY_Pro;
	private boolean SoldOut;
	private boolean Activated;
	private Date DateCre;
	private String User_Pro;
	private Integer Brand_Pro;
}
