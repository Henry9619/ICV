package com.icia.mov.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mov.dto.CommentDto;

@Repository
public class CommentDao {
	@Autowired
	private SqlSessionTemplate sql;

	

	public List<CommentDto> cList(String mCode) {
		System.out.println("[3]"+mCode);
		return sql.selectList("Comment.cList",mCode);
	}



	public int cWriter(CommentDto comm) {
		System.out.println("[3]입력"+comm);
		return sql.insert("Comment.cWriter", comm);
	}



	public int cDelete(CommentDto comm) {
		System.out.println("[3]삭제"+comm);
		return sql.delete("Comment.cDelete", comm);
	}



	public int cModi(CommentDto comm) {
		System.out.println("[3]수정"+comm);
		return sql.update("Comment.cMoid", comm);
	}
}
