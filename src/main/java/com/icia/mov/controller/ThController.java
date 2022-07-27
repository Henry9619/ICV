package com.icia.mov.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.service.ThService;

@Controller
public class ThController {
	private ModelAndView mav = new ModelAndView();
	@Autowired
	private ThService thsvc;

	// 영화관 목록보기 thList
	@RequestMapping(value = "/thList", method = RequestMethod.GET)
	public ModelAndView thList() {
		mav = thsvc.thList();
		return mav;
	}

	// 영화관 상세보기 thView
	@RequestMapping(value = "/thView", method = RequestMethod.GET)
	public ModelAndView thView(@RequestParam("thCode") String thCode) {
		System.out.println("[1]jsp에서 controller 가져온 member 정보\n" + thCode);

		mav = thsvc.thView(thCode);
		System.out.println("[5]service에서 controller 가져온 mav 정보\n" + mav);

		return mav;

	}

	
	  //거리뷰보기 thRoadMap
	@RequestMapping(value = "/thRoadMap", method = RequestMethod.GET)
	public ModelAndView thRoadMap(@RequestParam("thCode") String thCode) {
		System.out.println("[1]jsp에서 controller 가져온 member 정보\n" + thCode);
    
		mav = thsvc.thRoadMap(thCode);
	

		return mav;

	}


}
