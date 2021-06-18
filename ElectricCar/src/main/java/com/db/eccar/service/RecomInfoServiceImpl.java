package com.db.eccar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.db.eccar.model.RecomInfoDTO;
import com.db.eccar.reopsitory.RecomInfoDAO;

@Service
public class RecomInfoServiceImpl implements RecomInfoService{
	
	@Autowired
	RecomInfoDAO RecomInfoDAO;
	
	@Override
	public List<RecomInfoDTO> readRecomInfo(){
		
		List<RecomInfoDTO> result = RecomInfoDAO.readRecomInfo();
		
		return result;
		
	}
	@Override
	public List<RecomInfoDTO> readCategory(){
		
		List<RecomInfoDTO> result = RecomInfoDAO.readCategory();
		
		return result;
	}
	@Override
	public List<RecomInfoDTO> createRecomInfo(int category_id, String title, String url, String content){
		
		List<RecomInfoDTO> result = RecomInfoDAO.createRecomInfo(category_id, title, url, content);
		
		return result;
	}
	@Override
	public void createNewRecomInfo(RecomInfoDTO info) {
		RecomInfoDAO.createNewRecomInfo(info);
	}	

}
