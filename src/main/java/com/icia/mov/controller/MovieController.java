package com.icia.mov.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.dto.MovieDto;
import com.icia.mov.service.MovieSerivce;

@Controller
public class MovieController {
	@Autowired
	private HttpSession session;
	private ModelAndView mav = new ModelAndView();
	@Autowired
	private MovieSerivce movsvc;

	// 프로젝트 첫 실행 시
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "6") int limit) {
		System.out.println("1 c");
		mav = movsvc.index(page, limit);
		System.out.println("5 c" + mav);
		return mav;
	}
	// 첫 화면으로 이동
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index1(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "6") int limit) {
		System.out.println("1 c");
		mav = movsvc.index(page, limit);
		System.out.println("5 c" + mav);
		return mav;
	}

	@RequestMapping(value = "/movInfo", method = RequestMethod.GET)
	public ModelAndView movInfo(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "6") int limit) {
		System.out.println("1 c");
		mav = movsvc.movInfo(page, limit);
		System.out.println("5 c" + mav);
		return mav;
	}

	// movRegForm
	@RequestMapping(value = "movRegForm", method = RequestMethod.GET)
	public String movRegForm() {
		return "Mov_registration";
	}

	// movReg : 게시글 작성 메소드
	@RequestMapping(value = "movReg", method = RequestMethod.POST)
	public ModelAndView movReg(@ModelAttribute MovieDto movie) throws IllegalStateException, IOException {
		System.out.println("1" + movie);
		mav = movsvc.movReg(movie);
		System.out.println("5" + mav);
		return mav;
	}

	// movView 영화정보 상세보기
	@RequestMapping(value = "/movView", method = RequestMethod.GET)
	public ModelAndView movInfo(@RequestParam("movCode") String movCode) {
		System.out.println("1 상세 : " + movCode);
		mav = movsvc.movView(movCode);
		System.out.println("5 상세" + mav);
		return mav;
	}

	@RequestMapping(value = "/movModiForm", method = RequestMethod.GET)
	public ModelAndView movModiForm(@RequestParam("movCode") String movCode) {

		mav = movsvc.movModiForm(movCode);

		return mav;
	}

	// movModi 영화정보 수정
	@RequestMapping(value = "movModi", method = RequestMethod.POST)
	public ModelAndView movModi(@ModelAttribute MovieDto movie) throws IllegalStateException, IOException {
		System.out.println("1" + movie);
		mav = movsvc.movModi(movie);
		System.out.println("5" + mav);
		return mav;
	}

	// movDelete 영화정보 삭제
	@RequestMapping(value = "/movDelete", method = RequestMethod.GET)
	public ModelAndView movDelete(@RequestParam("movCode") String movCode) {
		mav = movsvc.movDelete(movCode);
		return mav;
	}
	
	
}
