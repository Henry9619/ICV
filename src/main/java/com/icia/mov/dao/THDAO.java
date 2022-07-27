package com.icia.mov.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mov.dto.THDTO;
@Repository
public class THDAO {
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<THDTO> thList() {
		
		return sql.selectList("Theater.thlist");
	}




	public THDTO thView(String thCode) {
		
		return sql.selectOne("Theater.thView",thCode);
	}
	

}
