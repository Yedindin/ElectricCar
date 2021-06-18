package com.db.eccar.reopsitory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.db.eccar.model.SearchDTO;

@Repository
public class SearchDAOImpl implements SearchDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<SearchDTO> readSearch(int brand_first_id, int brand_second_id, int carType, int maxprice, int minprice, String subsidy_yn, int input_sigoongoo_id) {
//		List<SearchDTO> searchInfolist = new ArrayList<SearchDTO>();
//		searchInfolist = sqlSession.selectList("Search.readSearch");
//		System.out.println(searchInfolist);
		
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("brand_first_id", brand_first_id);
		param.put("brand_second_id", brand_second_id);
		param.put("maxprice", maxprice);
		param.put("minprice", minprice);
		param.put("subsidy_yn", subsidy_yn);
		param.put("input_sigoongoo_id", input_sigoongoo_id);
		param.put("car_type", carType);
		System.out.println("result in DAO");
		System.out.println("brand_first_id: " + brand_first_id);
		System.out.println("brand_second_id: " + brand_second_id);
		System.out.println("carType: " + carType);		
		System.out.println("maxprice: " + maxprice);
		System.out.println("minprice: " + minprice);
		System.out.println("subsidy_yn: " + subsidy_yn);
		System.out.println("input_sigoongoo_id: " + input_sigoongoo_id);		

		List<SearchDTO> searchInfolist = sqlSession.selectList("Search.readSearch", param);
		System.out.println("result in DAO: " + searchInfolist);
		
		return searchInfolist;
	}
	

	
}