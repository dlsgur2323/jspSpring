package com.jsp.dao;

import java.sql.SQLException;
import java.util.List;

import com.jsp.dto.MemberVO;

public interface IMemberDao {
	List<MemberVO> getMemberList() throws SQLException;
	
	MemberVO getMember(String id) throws SQLException;
	
	int regist(MemberVO member) throws SQLException;
}
