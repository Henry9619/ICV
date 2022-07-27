package com.icia.mov.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;


import com.icia.mov.dao.THDAO;
import com.icia.mov.dto.THDTO;

@Service
public class ThService {
	private ModelAndView mav = new ModelAndView();
	@Autowired
	private THDAO thdao;

	
	public ModelAndView thList() {
	
		List<THDTO> thlist = thdao.thList();
		mav.setViewName("th_List");
		mav.addObject("thlist", thlist);
		return mav;
	}


	public ModelAndView thView(String thCode) {
		System.out.println("[2]service에서 controller 가져온 mav 정보\n" + thCode);
		THDTO theaters = thdao.thView(thCode);
		System.out.println("[3]1service에서 controller 가져온 mav 정보\n" + theaters);
		mav.setViewName("th_View");
		mav.addObject("thview", theaters);
		
		return mav;
	}


	public ModelAndView thRoadMap(String thCode) {
		THDTO theaters = thdao.thView(thCode);
		mav.setViewName("th_Roadmap");
		mav.addObject("throadmap", theaters);
		System.out.println("[3]service에서 controller 가져온 mav 정보\n" + theaters);
		return mav;
	}


	
}
