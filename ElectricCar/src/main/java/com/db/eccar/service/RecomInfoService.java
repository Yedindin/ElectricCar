package com.db.eccar.service;

import java.util.List;

import com.db.eccar.model.RecomInfoDTO;

public interface RecomInfoService {

	public List<RecomInfoDTO> readRecomInfo();
	
	public List<RecomInfoDTO> readCategory();
}
