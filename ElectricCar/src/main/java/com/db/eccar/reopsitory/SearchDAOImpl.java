package com.db.eccar.reopsitory;

import java.util.ArrayList;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.db.eccar.model.SearchDTO;

@Repository
public class SearchDAOImpl implements SearchDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<SearchDTO> readSearch() {
		List<SearchDTO> searchInfolist = new ArrayList<SearchDTO>();
		searchInfolist = sqlSession.selectList("Search.readSearch");
		//System.out.println(recomInfolist);
		return searchInfolist;
	}
	

	
}