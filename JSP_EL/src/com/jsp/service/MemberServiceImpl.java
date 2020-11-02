package com.jsp.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jsp.dto.MemberVO;

public class MemberServiceImpl implements MemberService{

	@Override
	public List<MemberVO> getMemberList() throws SQLException {
		List<MemberVO> memberList = null;
		
		memberList = new ArrayList<>();
		
		memberList.add(new MemberVO("mimi","mimi","mimi","010-1234-1234","mimi@mimi.com"));
		memberList.add(new MemberVO("mama","mama","mama","010-1234-1234","mama@mama.com"));
		
		return memberList;
	}
	
	@Override
	public MemberVO getMember(String id) throws SQLException {
		MemberVO member = null;
		if(id.equals("mimi")) {
			member= new MemberVO("mimi","mimi","mimi","010-1234-1234","mimi@mimi.com");
		}
		return member;
	}
	

}
