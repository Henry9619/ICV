package com.icia.mov.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.mov.dao.MDAO;
import com.icia.mov.dto.MDTO;
import com.icia.mov.dto.PDTO;
import com.icia.mov.dto.RESDTO2;

@Service
public class MService {

	// 1. ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	// 2. DAO(Repository)연결
	@Autowired
	private MDAO mdao;

	// 3. session 설정
	@Autowired
	private HttpSession session;
	// session 설정
	@Autowired
	private BCryptPasswordEncoder pwEnc;
	
	@Autowired
	private JavaMailSender mailsender;

	// 회원가입 메소드
	public ModelAndView mJoin(MDTO member) throws IllegalStateException, IOException {
		System.out.println("[2]controller에서 service로 가져온 member 정보\n" + member);

		UUID uuid = UUID.randomUUID();

		MultipartFile mProfile = member.getmProfile();

		String fileName = uuid.toString().substring(0, 8) + "_" + mProfile.getOriginalFilename();

		String savePath = "E:/Spring/Movend/src/main/webapp/resources/profile/"
				+ fileName;
		
		if (!mProfile.isEmpty()) {
			mProfile.transferTo(new File(savePath));
			member.setmProfileName(fileName);
		}

		// 2. 주소 처리
		String addr1 = member.getAddr1();
		String addr2 = member.getAddr2();
		String addr3 = member.getAddr3();

		String mAddr = "(" + addr1 + ")" + addr2 + " " + addr3;

		if (!addr1.equals("")) {
			member.setmAddr(mAddr);
		}
		// 비밀번호 암호화
		member.setmPw(pwEnc.encode(member.getmPw()));

		// 가입 여부를 확인하는 result 변수 선언
		int result = mdao.mJoin(member);

		if (result > 0) {
			mav.setViewName("M_Login");
		} else {
			mav.setViewName("M_Join");
		}

		return mav;
	}

	// 회원목록 메소드(페이징처리)
	public ModelAndView mList(int page, int limit) {

		// 한화면에 보여줄 페이지 번호 갯수
		int block = 5;

		// 전체 회원수
		int mCount = mdao.mCount();

		int startRow = (page - 1) * limit + 1;
		int endRow = page * limit;

		int maxPage = (int) (Math.ceil((double) mCount / limit)); // 7
		int startPage = (((int) (Math.ceil((double) page / block))) - 1) * block + 1;
		int endPage = startPage + block - 1;

		if (endPage > maxPage) {
			endPage = maxPage;
		}

		// 페이지 객체 생성
		PDTO paging = new PDTO();

		paging.setPage(page);

		paging.setStartRow(startRow);
		paging.setEndRow(endRow);

		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);

		paging.setLimit(limit);

		List<MDTO> mlist = mdao.mList(paging);

		mav.addObject("mlist", mlist);
		mav.addObject("paging", paging);
		mav.setViewName("M_List");

		return mav;
	}

	// 회원정보 상세보기 메소드
	public ModelAndView mView(String mId) {
		MDTO member = mdao.mView(mId);

		mav.addObject("view", member);
		mav.setViewName("M_View");

		// member.getmId()
		// ${view.mId}

		return mav;
	}

	// 로그인 메소드
	public ModelAndView mLogin(MDTO member) {

		String ePw = mdao.mEpw(member.getmId());

		if (pwEnc.matches(member.getmPw(), ePw)) {
			MDTO loginMember = mdao.mView(member.getmId());

			session.setAttribute("login", loginMember);
		}

		// ${view.mId}
		// ${login.mId}

		mav.setViewName("redirect:/index");
		return mav;
	}

	// 수정 페이지로 이동
	public ModelAndView mModiform(String mId) {

		MDTO member = mdao.mView(mId);

		mav.addObject("modi", member);
		mav.setViewName("M_Modify");

		return mav;
	}

	// 회원정보 수정 메소드
	public ModelAndView mModify(MDTO member) throws IllegalStateException, IOException {
		UUID uuid = UUID.randomUUID();

		MultipartFile mProfile = member.getmProfile();

		String fileName = uuid.toString().substring(0, 8) + "_" + mProfile.getOriginalFilename();

		String savePath = "E:/Spring/Movend/src/main/webapp/resources/profile/"
				+ fileName;

		if (!mProfile.isEmpty()) {
			mProfile.transferTo(new File(savePath));
			member.setmProfileName(fileName);
		}

		// 2. 주소 처리
		String addr1 = member.getAddr1();
		String addr2 = member.getAddr2();
		String addr3 = member.getAddr3();

		String mAddr = "(" + addr1 + ")" + addr2 + " " + addr3;

		if (!addr1.equals("")) {
			member.setmAddr(mAddr);
		}
		// 비밀번호 암호화
		member.setmPw(pwEnc.encode(member.getmPw()));

		// 수정 여부를 확인하는 result 변수 선언
		int result = mdao.mModify(member);

		if (result > 0) {
			mav.setViewName("redirect:myPageForm");
		} else {
			mav.setViewName("index");
		}

		return mav;
	}

	public ModelAndView mDelete(String mId) {
		int result = mdao.mDelete(mId);

		if (result > 0) {
			mav.setViewName("redirect:/index");
		} else {
			mav.setViewName("redirect:/mView?mId=" + mId);
		}

		return mav;
	}

	public String checkId(String mId) {
		System.out.println("[2] : ");
		String mid = mdao.checkId(mId);

		String msg = null;
		System.out.println("[4] : ");
		if (mid == null) {
			// 사용할 수 있는 아이디
			msg = "OK";
		} else {
			msg = "NO";
		}
		return msg;
	}

	public String checkEmail(String mEmail) {
		UUID uuid = UUID.randomUUID();
		String subuuid = uuid.toString().substring(0, 8);
		
		MimeMessage mail = mailsender.createMimeMessage();
		
		String str ="<h2>안녕하세요.</h2><br/>"
		+"<h3>인증번호는</h3>"+ subuuid +"<h3>입니다.</h3>";
		
		try {
			mail.setSubject("[이메일인증]", "utf-8");
			mail.setText(str, "utf-8", "html");
			mail.addRecipient(RecipientType.TO, new InternetAddress(mEmail));
			
			mailsender.send(mail);
			
			
		}catch(MessagingException e) {
			e.printStackTrace();
		}
		
		return subuuid;
	}

	public ModelAndView myPageForm() {
		
		Object sessionmember = session.getAttribute("login"); 
		MDTO mdto = (MDTO)sessionmember;
		System.out.println("로그인아이디 : " + mdto );
		List<RESDTO2> resdto2 = mdao.myPageForm(mdto);
		System.out.println("예매내역 : " + resdto2);
		mav.setViewName("myPageForm");
		mav.addObject("resdetail", resdto2);
		return mav;
	}

	public ModelAndView resCancle(String rvCode) {
		int result = mdao.resCancle(rvCode);
		if(result>0) {
			mav.setViewName("redirect:/myPageForm");
		}
		return mav;
	}

}
