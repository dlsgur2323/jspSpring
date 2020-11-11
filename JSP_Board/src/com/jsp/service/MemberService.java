package com.jsp.service;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.jsp.dto.MemberVO;
import com.jsp.exception.InvalidPasswordException;
import com.jsp.exception.NotFoundIDException;
import com.jsp.request.SearchCriteria;

public interface MemberService {
	void login(String id, String pwd, HttpSession session) throws SQLException, NotFoundIDException, InvalidPasswordException;
	
	List<MemberVO> getMemberList(SearchCriteria cri) throws SQLException;
	
	MemberVO getMember(String id) throws SQLException;
	
	void regist(MemberVO member) throws SQLException;
	
	void modify(MemberVO member) throws SQLException;
	
	void remove(String id) throws SQLException;
	
	void disabled(String id) throws SQLException;
	
	void enabled(String id) throws SQLException;
}
