package com.icia.mov.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.dao.MovieDao;
import com.icia.mov.dao.ScheduleDAO;
import com.icia.mov.dao.THDAO;
import com.icia.mov.dto.MovieDto;
import com.icia.mov.dto.SCHEDTO2;
import com.icia.mov.dto.ScheduleDTO;
import com.icia.mov.dto.THDTO;

@Service
public class ScheduleService {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private ScheduleDAO scdao;
	@Autowired
	private MovieDao mdao;
	@Autowired
	private THDAO thdao;

	public ModelAndView schedule(ScheduleDTO schedule) {

		String mdate = schedule.getMdate();
		String hmTime = schedule.getHmTime();

		String ScTime = mdate + " " + hmTime;

		if (!mdate.equals("")) {
			schedule.setScTime(ScTime);
		}
		int result = scdao.schedule(schedule);

		if (result > 0) {
			mav.setViewName("redirect:/SchaduleList");
		} else {
			mav.setViewName("redirect:/index");
		}
		return mav;
	}

	public ModelAndView schaduleForm() {
		List<MovieDto> movie = scdao.movList();
		List<THDTO> theater = thdao.thList();

		mav.setViewName("schaduleForm");
		mav.addObject("theater", theater);
		mav.addObject("movie", movie);

		return mav;
	}

	public ModelAndView movSearch(String movName) {
		System.out.println("2 s" + movName);
		List<MovieDto> mSearch = scdao.movSearch(movName);
		System.out.println("4 s" + mav);
		mav.setViewName("S_List");
		mav.addObject("mSearch", mSearch);

		return mav;
	}

	//상영시간 리스트
	public ModelAndView SchaduleList() {
		List<SCHEDTO2> sdDTO2 = scdao.SchaduleList();
		mav.setViewName("SchaduleList");
		mav.addObject("SchaduleList", sdDTO2);

		return mav;
	}

}
