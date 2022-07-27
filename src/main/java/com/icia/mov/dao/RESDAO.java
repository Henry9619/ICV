package com.icia.mov.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mov.dto.MovieDto;
import com.icia.mov.dto.RESDTO;
import com.icia.mov.dto.RESDTO2;
import com.icia.mov.dto.SCHEDTO;
import com.icia.mov.dto.THDTO;

@Repository
public class RESDAO {
	@Autowired
	private SqlSessionTemplate sql;

	public List<MovieDto> resPage() {
	
		return sql.selectList("Reserve.respage");
	}



	
	public List<THDTO> thList() {
		
		return sql.selectList("Reserve.thlist");
	}



	public List<SCHEDTO> scheList(SCHEDTO schedto) {
		
	 return sql.selectList("Reserve.scheList", schedto);
	}




	public int ressuccess(RESDTO res) {
		
		return sql.insert("Reserve.ressuccess", res);
	}








	public RESDTO2 resview(String rvCode) {
	
		return sql.selectOne("Reserve.resview",rvCode);
	}









}
