package com.jsp.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.jsp.dto.MemberVO;
import com.jsp.util.BuildSqlMapClient;

public class MemberDaoImpl implements IMemberDao{
	private SqlMapClient smc;
	private static IMemberDao dao;
	private MemberDaoImpl() {
		smc = BuildSqlMapClient.getSqlMapClient();
	}
	public static IMemberDao getInstance() {
		if(dao==null) dao = new MemberDaoImpl();
		return dao;
	}
	
	@Override
	public MemberVO getMember(String id) throws SQLException {
		return (MemberVO)smc.queryForObject("member.getMember",id);
	}
	
	@Override
	public int regist(MemberVO member) throws SQLException {
		Object obj = smc.insert("member.regist", member);
		int result = obj == null ? 1 : 0;
		return result;
	}
}
