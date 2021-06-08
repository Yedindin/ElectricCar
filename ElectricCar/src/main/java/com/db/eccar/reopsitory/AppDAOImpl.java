package com.db.eccar.reopsitory;

import java.util.ArrayList;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.db.eccar.model.AppDTO;

@Repository
public class AppDAOImpl implements AppDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<AppDTO> readApp() {
		List<AppDTO> moreInfolist = new ArrayList<AppDTO>();
		moreInfolist = sqlSession.selectList("MoreInfo.readMoreInfo");
		//System.out.println(recomInfolist);
		return moreInfolist;
	}
	

	
}
