package com.kimmintpod.Service;

import org.springframework.stereotype.Service;

@Service
public class MathService {
	public int Raldom6() {
		int rand = (int) (Math.floor(100000 + Math.random() * 900000));
		return rand;
	}
}
