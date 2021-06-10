package com.db.eccar.service;

import java.util.List;

import com.db.eccar.model.SearchDTO;


public interface SearchService {
	
	public List<SearchDTO> readSearch();
}
