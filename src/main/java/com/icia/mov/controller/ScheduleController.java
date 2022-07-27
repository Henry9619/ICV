package com.icia.mov.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.dto.ScheduleDTO;
import com.icia.mov.service.ScheduleService;

@Controller
public class ScheduleController {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private ScheduleService scsvc;

	// schaduleForm 이동
	@RequestMapping(value = "/schaduleForm", method = RequestMethod.GET)
	public ModelAndView schaduleForm() {
		mav = scsvc.schaduleForm();
		return mav;
	}
	// schedule 메소드
	@RequestMapping(value = "/schedule", method = RequestMethod.POST)
	public ModelAndView schedule(@ModelAttribute ScheduleDTO schedule) throws IllegalStateException, IOException {
		System.out.println("[1]jsp에서 controller로 가져온 member 정보\n" + schedule);

		mav = scsvc.schedule(schedule);

		System.out.println("[5]service에서 controller로 가져온 mav 정보\n" + mav);

		return mav;
	}
	//movSearch 검색
	@RequestMapping(value ="/movSearch" ,method=RequestMethod.POST)
	public ModelAndView movSearch(@RequestParam("movName")String movName)  {
		System.out.println("1 c" + movName);
		mav = scsvc.movSearch(movName);
		System.out.println("5 c"+mav);
		return mav;
	}
	//SchaduleList : 상영시간 리스트
	@RequestMapping(value ="/SchaduleList" ,method=RequestMethod.GET)
	public ModelAndView SchaduleList()  {
		System.out.println("1 c" );
		mav = scsvc.SchaduleList();
		System.out.println("5 c"+mav);
		return mav;
	}
	
	
}
