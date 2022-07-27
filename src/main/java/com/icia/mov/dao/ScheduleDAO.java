package com.icia.mov.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mov.dto.MovieDto;
import com.icia.mov.dto.SCHEDTO2;
import com.icia.mov.dto.ScheduleDTO;

@Repository
public class ScheduleDAO {

	@Autowired
	private SqlSessionTemplate sql;
	
	public int schedule(ScheduleDTO schedule) {
		// TODO Auto-generated method stub
		return sql.insert("Schedule.insert", schedule);
	}

	public List<MovieDto> movList() {
		// TODO Auto-generated method stub
		return sql.selectList("Schedule.movList");
	}

	public List<MovieDto> movSearch(String movName) {
		System.out.println("3 d" + movName);
		// TODO Auto-generated method stub
		return sql.selectList("Schedule.movSearch", movName);
	}
	
	//상영시간 리스트
	public List<SCHEDTO2> SchaduleList() {
		
		return sql.selectList("Schedule.SchaduleList");
	}

	
	
	

}
