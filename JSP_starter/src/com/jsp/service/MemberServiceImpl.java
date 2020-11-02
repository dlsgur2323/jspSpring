package com.jsp.service;

import java.sql.SQLException;

import com.jsp.dao.IMemberDao;
import com.jsp.dao.MemberDaoImpl;
import com.jsp.dto.MemberVO;

public class MemberServiceImpl implements MemberService {

	private IMemberDao dao;
	private static MemberService service;
	private MemberServiceImpl() {
		dao = MemberDaoImpl.getInstance();
	}
	public static MemberService getInstance() {
		if(service==null) service = new MemberServiceImpl();
		return service;
	}
	
	@Override
	public MemberVO getMember(String id) throws SQLException {
		MemberVO member = dao.getMember(id);
		return member != null ? member : null;
	}

	@Override
	public int regist(MemberVO member) throws SQLException {
		return dao.regist(member); 
	}
}
