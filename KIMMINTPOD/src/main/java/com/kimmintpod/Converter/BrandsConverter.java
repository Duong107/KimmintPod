package com.kimmintpod.Converter;

import java.util.Date;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BrandsConverter {
	private Integer ID_Brand;
	private String Name_Brand;
	private String Image_Brand;
	private boolean Activated;
	private Date DateCre;
	private String User_Brand;
}
