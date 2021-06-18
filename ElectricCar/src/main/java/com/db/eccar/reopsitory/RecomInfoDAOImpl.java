package com.db.eccar.reopsitory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.db.eccar.model.RecomInfoDTO;

@Repository
public class RecomInfoDAOImpl implements RecomInfoDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<RecomInfoDTO> readRecomInfo() {
		List<RecomInfoDTO> recomInfolist = new ArrayList<RecomInfoDTO>();
		recomInfolist = sqlSession.selectList("Post.readRecomInfo");
		//System.out.println(recomInfolist);
		return recomInfolist;
	}
	
	@Override
	public List<RecomInfoDTO> readCategory(){
		List<RecomInfoDTO> Categorylist = new ArrayList<RecomInfoDTO>();
		Categorylist = sqlSession.selectList("Post.readCategory");
		//System.out.println(recomInfolist);
		return Categorylist;
	}

	@Override
	public RecomInfoDTO readPost(int post_id) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("post_id",post_id);
		RecomInfoDTO post = new RecomInfoDTO();
		post = sqlSession.selectOne("Post.readPost",param);
		System.out.println(" DAO: "+ post);
		return post;
	}
	
	@Override
	public int updatePost(RecomInfoDTO dto) {
		int result = sqlSession.update("Post.updatePost", dto);
		return result;
	}
	
	@Override
	public int deletePost(int post_id) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("post_id",post_id);
		int result = sqlSession.update("Post.deletePost", param);
		return result;
	}
}
