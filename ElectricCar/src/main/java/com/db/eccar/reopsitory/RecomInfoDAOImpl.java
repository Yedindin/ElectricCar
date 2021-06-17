package com.db.eccar.reopsitory;

import java.util.ArrayList;

import java.util.List;

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

	
}
