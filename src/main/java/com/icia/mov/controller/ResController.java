package com.icia.mov.controller;

import java.sql.Date;
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

import com.icia.mov.dto.RESDTO;
import com.icia.mov.dto.SCHEDTO;
import com.icia.mov.dto.THDTO;
import com.icia.mov.service.ResService;


@Controller
public class ResController {
	
	private ModelAndView mav = new ModelAndView();
	@Autowired
	private ResService ressvc;
	
	@RequestMapping(value = "/resPage", method = RequestMethod.GET)
	public ModelAndView resPage() {
		mav = ressvc.resPage();
		return mav;
	}
	
	List<THDTO> thList  = new ArrayList<THDTO>();
	
	
	
	List<SCHEDTO> scheList  = new ArrayList<SCHEDTO>();
	
	@RequestMapping(value="/schedule2", method = RequestMethod.POST)
	public @ResponseBody List<SCHEDTO> schedule(@RequestParam(value="thCode", required=true)String thCode,@RequestParam(value="mCode", required=true)int mCode,@RequestParam(value="date", required=true)Date date){
		
		scheList = ressvc.scheList(thCode,mCode,date);
		return scheList;
		
	}
	
	
	// ressuccess : 예매하기
		@RequestMapping(value = "/ressuccess", method = RequestMethod.POST)
		public ModelAndView ressuccess(@ModelAttribute RESDTO res) {
			
			System.out.println("[5]service에서 controller 가져온 mav 정보\n" + res);
			mav = ressvc.ressuccess(res);

			System.out.println("[5]service에서 controller 가져온 mav 정보\n" + mav);

			return mav;
		}
	
	
	
	
}
