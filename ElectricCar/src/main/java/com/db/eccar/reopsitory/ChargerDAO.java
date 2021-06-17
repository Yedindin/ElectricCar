package com.db.eccar.reopsitory;

import java.util.List;

import com.db.eccar.model.AddressDTO;
import com.db.eccar.model.StationDTO;


public interface ChargerDAO {

	public List<StationDTO> readCharger(int sigoongoo_id);
	public List<AddressDTO> readAddress();
	public List<AddressDTO> readSiggongoo(int id);
	
}
