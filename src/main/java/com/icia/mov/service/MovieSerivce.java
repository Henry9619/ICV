package com.icia.mov.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.dao.MovieDao;
import com.icia.mov.dto.MovieDto;
import com.icia.mov.dto.PDTO;

@Service
public class MovieSerivce {
	@Autowired
	private MovieDao movdao;
	private ModelAndView mav = new ModelAndView();
	@Autowired
	private HttpSession session;
	public ModelAndView movInfo(int page, int limit) {
		int block = 5;

		int mCount = movdao.mCount();

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;

		int maxPage = (int) (Math.ceil((double) mCount / limit)); // Math.ceil 올림
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;
		// 오류 방지
		if (endPage > maxPage) {
			endPage = maxPage;

		}

		PDTO paging = new PDTO();

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);
		List<MovieDto> movinfo = movdao.mvoinfo(paging);

		mav.setViewName("movieInfo");
		session.setAttribute("mInfo", movinfo);
		session.setAttribute("paging", paging);
		return mav;
	}

	public ModelAndView movReg(MovieDto movie) throws IllegalStateException, IOException {
		// 파일처리
		System.out.println("2 c" + movie);
		UUID uuid = UUID.randomUUID();

		MultipartFile movFile = movie.getMovFile();

		String fileName = uuid.toString().substring(0, 8) + "_" + movFile.getOriginalFilename();

		String savePath =  "E:/Spring/Movend/src/main/webapp/resources/fileUpload/"
				+ fileName;

		if (!movFile.isEmpty()) {
			movFile.transferTo(new File(savePath));
			movie.setMovPoster(fileName);
		}

		int result = movdao.movReg(movie);
		System.out.println("4 c" + result);
		MovieDto mdto = movdao.movView1(movie.getMovName());
	
		if (result > 0) {
			mav.setViewName("redirect:/movView?movCode=" + mdto.getMovCode());
		} else {
			mav.setViewName("index");
		}

		return mav;
	}

	public ModelAndView movView(String movCode) {
		System.out.println("2. 상세 :" + movCode);

		MovieDto mdto = movdao.movView(movCode);

		System.out.println("5. 상세 :" + mav);

		mav.setViewName("movView");
		mav.addObject("movView", mdto);

		return mav;
	}
	public ModelAndView movModi(MovieDto movie) throws IllegalStateException, IOException {
		System.out.println("2 c" + movie);
		UUID uuid = UUID.randomUUID();

		MultipartFile movFile = movie.getMovFile();

		String fileName = uuid.toString().substring(0, 8) + "_" + movFile.getOriginalFilename();

		String savePath = "E:/Spring/Movend/src/main/webapp/resources/fileUpload/"	+ fileName;

		if (!movFile.isEmpty()) {
			movFile.transferTo(new File(savePath));
			movie.setMovPoster(fileName);
		}

		int result = movdao.movModi(movie);
		System.out.println("4 c" + result);
		if (result > 0) {
			mav.setViewName("redirect:/movView?movCode=" + movie.getMovCode());
		} else {
			mav.setViewName("index");
		}

		return mav;
	}

	public ModelAndView movModiForm(String movCode) {
		MovieDto mdto = movdao.movView(movCode);

		mav.addObject("movModi", mdto);
		mav.setViewName("mov_Modify");

		return mav;
	}

	public ModelAndView movDelete(String movCode) {
		int result = movdao.movDelete(movCode);
		
		if (result > 0) {
			mav.setViewName("redirect:/movInfo");
		} else {
			mav.setViewName("redirect:/movDelete?movCode=" + movCode);
		}
		
		return mav;
	}

	

	public ModelAndView index(int page, int limit) {
		int block = 5;

		int mCount = movdao.mCount();

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;

		int maxPage = (int) (Math.ceil((double) mCount / limit)); // Math.ceil 올림
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;
		// 오류 방지
		if (endPage > maxPage) {
			endPage = maxPage;

		}

		PDTO paging = new PDTO();

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimit(limit);
		List<MovieDto> movinfo = movdao.mvoinfo(paging);

		mav.setViewName("index");
		mav.addObject("mInfo1", movinfo);
		mav.addObject("paging1", paging);
		return mav;
	}


	
	
	

}
