package com.db.eccar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.db.eccar.model.EccarDTO;
import com.db.eccar.reopsitory.EcCarDAO;

@Service
public class EcCarServiceImpl implements EcCarService {

	@Autowired
	EcCarDAO EcCarDAO;
	
	@Override
	public List<EccarDTO> readBrand() {
		
		List<EccarDTO> result = EcCarDAO.readBrand();
		
		return result;
		
	}
}
