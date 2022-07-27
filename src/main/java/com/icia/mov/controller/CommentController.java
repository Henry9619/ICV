package com.icia.mov.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.dto.CommentDto;
import com.icia.mov.service.CommentService;

@Controller
@RequestMapping("/comment")
public class CommentController {

	private ModelAndView mav = new ModelAndView();
	@Autowired
	private CommentService csvc;
	
	List<CommentDto> commentList = new ArrayList<CommentDto>();
	
	//cList : 댓글 목록 불러오기
	@RequestMapping(value="/cList", method=RequestMethod.POST)
	public @ResponseBody List<CommentDto> cList(@RequestParam(value="mCode", required=true)String mCode ){
		System.out.println("[1] 댓글:" +mCode);
		commentList = csvc.cList(mCode);
		System.out.println("[5] 댓글 :" +commentList);
		return commentList;
	}
	
	//cWrite : 댓글쓰기
	@RequestMapping(value="/cWrite", method=RequestMethod.POST)
	public @ResponseBody List<CommentDto> cWrite(@ModelAttribute CommentDto comm ){
		System.out.println("[1] 입력:" +comm);
		commentList = csvc.cWrite(comm);
		System.out.println("[5] 입력:" +commentList);
		return commentList;
	}
	
	//cDelete : 댓글 삭제
	@RequestMapping(value="/cDelete", method=RequestMethod.POST)
	public @ResponseBody List<CommentDto> cDelete(@ModelAttribute CommentDto comm ){
		System.out.println("[1] 입력:" +comm);
		commentList = csvc.cDelete(comm);
		System.out.println("[5] 입력:" +commentList);
		return commentList;
	}
	//cModi : 댓글 수정
	@RequestMapping(value="/cModi", method=RequestMethod.POST)
	public @ResponseBody List<CommentDto> cModi(@ModelAttribute CommentDto comm ){
		System.out.println("[1] 수정:" +comm);
		commentList = csvc.cModi(comm);
		System.out.println("[5] 수정:" +commentList);
		return commentList;
	}
}
