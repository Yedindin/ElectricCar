package com.db.eccar.reopsitory;

import java.util.ArrayList;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.db.eccar.model.RecomInfoDTO;

@Repository
public class RecomInfoDAOImpl {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<RecomInfoDTO> readRecomInfo() {
		List<RecomInfoDTO> recomInfolist = new ArrayList<RecomInfoDTO>();
		recomInfolist = sqlSession.selectList("test.readRecomInfo");
		System.out.println(recomInfolist);
		return recomInfolist;
	}
	

	
}
