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
	public RecomInfoDTO readPost(int post_id) {
		RecomInfoDTO post = RecomInfoDAO.readPost(post_id);
		
		return post;
	}
	
	@Override
	public int updatePost(RecomInfoDTO dto) {
		return RecomInfoDAO.updatePost(dto);
	}
	
	@Override
	public int deletePost(int post_id) {
		return RecomInfoDAO.deletePost(post_id);
	}
}
