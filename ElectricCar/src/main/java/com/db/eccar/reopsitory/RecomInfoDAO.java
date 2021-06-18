package com.db.eccar.reopsitory;
import java.util.List;
import com.db.eccar.model.RecomInfoDTO;

public interface RecomInfoDAO {

	public List<RecomInfoDTO> readRecomInfo();

	public List<RecomInfoDTO> readCategory();

	public RecomInfoDTO readPost(int post_id);
	
	public List<RecomInfoDTO> createRecomInfo(int category_id, String title, String url, String content);

	public void createNewRecomInfo(RecomInfoDTO dto);
	
	public int updatePost(RecomInfoDTO dto);

	public int deletePost(int post_id);
	
}
