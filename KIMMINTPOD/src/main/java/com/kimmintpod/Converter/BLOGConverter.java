package com.kimmintpod.Converter;
import java.util.Date;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BLOGConverter{
	private Integer ID_BLOG;
	private String TITLE;
	private String SUBJ;
	private String BODY;
	private Date DateCre;
	private boolean HIDE;
	private String ID_User;
}
