package com.kimmintpod.bean;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Captha {
	private String Email;
	private int CapthaCode;
}
