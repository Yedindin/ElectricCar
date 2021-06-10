package com.db.eccar.reopsitory;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.db.eccar.model.AddressDTO;
import com.db.eccar.model.StationDTO;

@Repository
public class ChargerDAOImpl implements ChargerDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<StationDTO> readCharger() {
		List<StationDTO> chargerlist = new ArrayList<StationDTO>();
		chargerlist = sqlSession.selectList("Station.readStation");
		//System.out.println(recomInfolist);
		return chargerlist;
	}
	@Override
	public List<AddressDTO> readAddress(){
		List<AddressDTO> addressList = new ArrayList<AddressDTO>();
		addressList = sqlSession.selectList("Station.readAddress");
		//System.out.println(recomInfolist);
		return addressList;
	}
	@Override
	public List<AddressDTO> readSiggongoo(int id){
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);		
		System.out.println("시도 설정후: " + id);
		List<AddressDTO> list = sqlSession.selectList("Station.readSiggongoo", param);
//		for(AddressDTO i : list) {
//			System.out.println(i.toString());
//		}
		return list;
	}
	

}
