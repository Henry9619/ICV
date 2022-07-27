package com.icia.mov.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mov.dto.MovieDto;
import com.icia.mov.dto.PDTO;

@Repository
public class MovieDao {
	@Autowired
	private SqlSessionTemplate sql;

	public int mCount() {

		return sql.selectOne("Movie.mCount");
	}

	public List<MovieDto> mvoinfo(PDTO paging) {

		return sql.selectList("Movie.mvoinfo", paging);
	}

	public int movReg(MovieDto movie) {
		System.out.println("3" + movie);
		// TODO Auto-generated method stub
		return sql.insert("Movie.movReg", movie);
	}

	public MovieDto movView(String movCode) {
		System.out.println("3. dao상세 :" + movCode);
		return sql.selectOne("Movie.movView", movCode);
	}
	public int movModi(MovieDto movie) {
		System.out.println("3. dao상세 :" + movie);
		return sql.update("Movie.movModi", movie);
	}

	public int movDelete(String movCode) {
		// TODO Auto-generated method stub
		return sql.delete("Movie.movDelete", movCode);
	}
	public List<MovieDto> movSearch(String movName) {
		System.out.println("3 d" + movName);
		// TODO Auto-generated method stub
		return sql.selectList("Schedule.movSearch", movName);
	}

	public MovieDto movView1(String movName) {
		
		return sql.selectOne("Movie.movView1", movName);
	}


}
