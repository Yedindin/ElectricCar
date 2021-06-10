package com.db.eccar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.db.eccar.model.AddressDTO;
import com.db.eccar.model.StationDTO;
import com.db.eccar.reopsitory.ChargerDAO;

@Service
public class ChargerServiceImpl implements ChargerService{

	@Autowired
	ChargerDAO ChargerDAO;
	
	@Override
	public List<StationDTO> readCharger() {
		
		List<StationDTO> result = ChargerDAO.readCharger();
		
		return result;
		
	}
	@Override
	public List<AddressDTO> readAddress(){
		List<AddressDTO> result = ChargerDAO.readAddress();
		return result;
	}
	@Override
	public List<AddressDTO> readSiggongoo(){
		List<AddressDTO> result = ChargerDAO.readSiggongoo();
		return result;
	}	
}
