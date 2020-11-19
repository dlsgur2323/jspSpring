package com.jsp.action.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.exception.ExceptionLoggerHelper;
import com.jsp.service.MemberService;

public class MemberRegistAction implements Action {
	
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "";
		
		MemberVO member = new MemberVO();
		
		member.setId(request.getParameter("id").trim());
		member.setPwd(request.getParameter("pwd").trim());
		member.setName(request.getParameter("name").trim());
		member.setAuthority(request.getParameter("authority").trim());
		member.setEmail(request.getParameter("email").trim());
		member.setPicture(request.getParameter("picture"));
		String phone = "";
		for(String data : request.getParameterValues("phone")) {
			phone += data;
		}
		member.setPhone(phone);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		try {
//			throw new SQLException("테스트 ExceptionLoggerHelper");
			
			memberService.regist(member);
			
			out.print("<script>");
			out.print("alert('회원등록 완료');");
			out.print("window.opener.location.hef='"+request.getContextPath()+"/member/list.do';");
			out.print("window.close();");
			out.print("</script>");
			
			
		} catch (SQLException e) {
			out.print("<script>");
			out.print("alert('회원가입을 실패했습니다.');");
			out.print("history.go(-1)");
			out.print("</script>");
			e.printStackTrace();
			ExceptionLoggerHelper.write(request, e, memberService);
			
		} finally {
			if(out != null) {
				out.close();
			}
		}
		
		return url;
	}

}
















