package com.icia.mov.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.mov.dao.CommentDao;
import com.icia.mov.dto.CommentDto;

@Service
public class CommentService {

	@Autowired
	private CommentDao cdao;

	List<CommentDto> commentList = new ArrayList<CommentDto>();

	public List<CommentDto> cList(String mCode) {
		System.out.println("[2]:" +mCode);
		commentList = cdao.cList(mCode);
		System.out.println("[4]:" +commentList);
		return commentList;
	}

	public List<CommentDto> cWrite(CommentDto comm) {
		System.out.println("[2] 입력:" +comm);
		int result = cdao.cWriter(comm);
		System.out.println("[4] 입력:" +result);
		if(result>0) {
			commentList = cdao.cList(comm.getCmNum());
		}else {
			commentList = null;
		}
		return commentList;
	}

	public List<CommentDto> cDelete(CommentDto comm) {
		System.out.println("[2] 삭제:" +comm);
		int result = cdao.cDelete(comm);
		
		if(result>0) {
			commentList = cdao.cList(comm.getCmNum());
		}else {
			commentList = null;
		}
		System.out.println("[4] 삭제:" +commentList);
		return commentList;
	}

	public List<CommentDto> cModi(CommentDto comm) {
		
		int result = cdao.cModi(comm);
		
		if(result>0) {
			commentList = cdao.cList(comm.getCmNum());
		}else {
			commentList = null;
		}
		
		return commentList;
	}

}
