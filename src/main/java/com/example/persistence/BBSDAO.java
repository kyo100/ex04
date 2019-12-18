package com.example.persistence;

import java.util.List;

import com.example.domain.BBSVO;

public interface BBSDAO {
	public List<BBSVO> list(Integer start, String key, String word);
	
	public int total(String key, String word);
}
