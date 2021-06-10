package com.db.eccar.service;

import java.util.List;

import com.db.eccar.model.AddressDTO;
import com.db.eccar.model.StationDTO;

public interface ChargerService {

	public List<StationDTO> readCharger();
	public List<AddressDTO> readAddress();
	public List<AddressDTO> readSiggongoo(int id);
	
}
