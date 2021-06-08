package com.db.eccar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.db.eccar.model.AppDTO;
import com.db.eccar.reopsitory.AppDAO;

@Service
public class AppInfoServiceImpl implements AppInfoService{
	
	@Autowired
	AppDAO AppDAO;
	
	@Override
	public List<AppDTO> readApp() {
		
		List<AppDTO> result = AppDAO.readApp();
		
		return result;
		
	}
}
