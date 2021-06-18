package com.db.eccar.reopsitory;
import java.util.List;

import com.db.eccar.model.SearchDTO;

public interface SearchDAO {

	public List<SearchDTO> readSearch(int brand_first_id, int brand_second_id, int carType, int maxprice, int minprice, String subsidy_yn, int input_sigoongoo_id);
	
}
