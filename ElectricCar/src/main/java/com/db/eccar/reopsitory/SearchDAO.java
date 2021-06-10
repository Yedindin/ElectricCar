package com.db.eccar.reopsitory;
import java.util.List;

import com.db.eccar.model.SearchDTO;

public interface SearchDAO {

	public List<SearchDTO> readSearch();
	
}
