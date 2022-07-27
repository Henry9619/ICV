package com.icia.mov.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.dao.RESDAO;
import com.icia.mov.dto.MovieDto;
import com.icia.mov.dto.RESDTO;
import com.icia.mov.dto.RESDTO2;
import com.icia.mov.dto.SCHEDTO;
import com.icia.mov.dto.THDTO;

@Service
public class ResService {
	
	private ModelAndView mav = new ModelAndView();
	@Autowired
	private RESDAO resdao;
	List<THDTO> thList  = new ArrayList<THDTO>();
	List<SCHEDTO> scheList  = new ArrayList<SCHEDTO>();
	
	public ModelAndView resPage() {
		List<MovieDto> movielist = resdao.resPage();
		List<THDTO> thList  = resdao.thList();
		System.out.println("[1]작성 controller : " + thList);
		System.out.println("[1]작성 controller : " + movielist);
		mav.setViewName("reserveuser");
		mav.addObject("movielist", movielist);
		mav.addObject("thList", thList);
		return mav;
	}
	


	public List<SCHEDTO> scheList(String thCode, int mCode, Date date) {
		SCHEDTO schedto = new SCHEDTO();
		schedto.setScThCode(thCode);
		schedto.setScMovCode(mCode);
		schedto.setScDate(date);
		System.out.println("[1]set확인: " + schedto);
		scheList = resdao.scheList(schedto);
		System.out.println("[1]작성 controller : " + scheList);
		return scheList;
	}



	public ModelAndView ressuccess(RESDTO res) {
		UUID uuid = UUID.randomUUID();
		String rescode = uuid.toString().substring(0, 8);
		
		res.setRvCode(rescode);
		System.out.println("[1]작성 controller : " + res);
		int result = resdao.ressuccess(res);
	
		String rvCode = res.getRvCode();
		RESDTO2 resdtoList = resdao.resview(rvCode);
		if(result>0) {
			mav.setViewName("redirect:/myPageForm");
			mav.addObject("resdtoList",resdtoList);
		}
		return mav;
	}


}
