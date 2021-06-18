package com.db.eccar.reopsitory;
import java.util.List;
import com.db.eccar.model.RecomInfoDTO;

public interface RecomInfoDAO {

	public List<RecomInfoDTO> readRecomInfo();

	public List<RecomInfoDTO> readCategory();

	public RecomInfoDTO readPost(int post_id);

	public int updatePost(RecomInfoDTO dto);

	public int deletePost(int post_id);
	
}
