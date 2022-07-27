package com.icia.mov.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.mov.dto.MDTO;
import com.icia.mov.dto.PDTO;
import com.icia.mov.dto.RESDTO2;

@Repository
public class MDAO {
	
	// sql(mapper)연결
	@Autowired
	private SqlSessionTemplate sql;

	
	// 회원가입 메소드
	public int mJoin(MDTO member) {
		System.out.println("[3]service에서 dao로 가져온 member 정보\n" + member);
		return sql.insert("Member.mJoin", member);
	}


	

	// 회원수 메소드
	public int mCount() {
		return sql.selectOne("Member.mCount");
	}


	public List<MDTO> mList(PDTO paging) {
		return sql.selectList("Member.mList", paging);
	}


	public MDTO mView(String mId) {
		return sql.selectOne("Member.mView", mId);
	}


	// 로그인 메소드
	public MDTO mLogin(MDTO member) {
		return sql.selectOne("Member.mLogin", member);
	}


	// 회원수정 메소드
	public int mModify(MDTO member) {
		System.out.println("[3]수정 dao : " + member);
		return sql.update("Member.mModify", member);
	}


	public int mDelete(String mId) {
		return sql.delete("Member.mDelete", mId);
	}


	public String checkId(String mId) {
		
		return sql.selectOne("Member.checkId", mId);
	}




	public String mEpw(String loginId) {
		// TODO Auto-generated method stub
		// 입력한 id로 암호화 된 패스워드를 검색
		return sql.selectOne("Member.mEpw",loginId);
	}




	public List<RESDTO2> myPageForm(MDTO mdto) {
	
		return sql.selectList("Member.mPform",mdto);
	}




	public int resCancle(String rvCode) {
		// TODO Auto-generated method stub
		return sql.delete("Member.resCancle",rvCode);
	}

	
	
	
	

}







