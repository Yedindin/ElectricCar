package com.db.eccar.reopsitory;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.db.eccar.model.EccarDTO;


@Repository
public class EcCarDAOImpl implements EcCarDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<EccarDTO> readBrand() {
		List<EccarDTO> brandlist = new ArrayList<EccarDTO>();
		brandlist = sqlSession.selectList("Brand.readBrand");
		return brandlist;
	}
}
