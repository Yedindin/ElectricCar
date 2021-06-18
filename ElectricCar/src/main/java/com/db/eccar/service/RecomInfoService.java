package com.db.eccar.service;

import java.util.List;

import com.db.eccar.model.RecomInfoDTO;

public interface RecomInfoService {

	public List<RecomInfoDTO> readRecomInfo();
	
	public List<RecomInfoDTO> readCategory();
	
	public List<RecomInfoDTO> createRecomInfo(int category_id, String title, String url, String content);

	public void createNewRecomInfo(RecomInfoDTO info);
	
	public RecomInfoDTO readPost(int post_id);
	
	public int updatePost(RecomInfoDTO dto);
	
	public int deletePost(int post_id);
}
