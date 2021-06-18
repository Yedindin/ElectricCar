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
	public List<SearchDTO> readSearch(int brand_first_id, int brand_second_id, int carType, int maxprice, int minprice, String subsidy_yn, int input_sigoongoo_id) {
		
		List<SearchDTO> result = SearchDAO.readSearch(brand_first_id, brand_second_id, carType, maxprice, minprice, subsidy_yn, input_sigoongoo_id);
		
		return result;
		
	}
}
