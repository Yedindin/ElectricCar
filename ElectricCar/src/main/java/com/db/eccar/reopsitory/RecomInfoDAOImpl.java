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
	
	@Autowired
	RecomInfoDAO recomInfoDAO;
	
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
	public List<RecomInfoDTO> createRecomInfo(int category_id, String title, String url, String content){
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("category_id", category_id);		
		param.put("title", title);		
		param.put("url", url);	
		param.put("content", content);		
		System.out.println(param);
		List<RecomInfoDTO> Categorylist = sqlSession.selectList("Post.createRecomInfo");
		System.out.println(Categorylist);
		return Categorylist;
	}
	
	@Override
	public void createNewRecomInfo(RecomInfoDTO dto){
		sqlSession.insert("Post.createRecomInfo", dto);

	}	
	
	
}
