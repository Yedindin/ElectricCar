package com.db.eccar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.db.eccar.model.SearchDTO;
import com.db.eccar.reopsitory.SearchDAO;

@Service
public class SearchServiceImpl implements SearchService{
	
	@Autowired
	SearchDAO SearchDAO;
	
	@Override
	public List<SearchDTO> readSearch() {
		
		List<SearchDTO> result = SearchDAO.readSearch();
		
		return result;
		
	}
}
