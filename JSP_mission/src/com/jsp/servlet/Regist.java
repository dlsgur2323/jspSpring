package com.jsp.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.MemberVO;
import com.jsp.service.MemberService;
import com.jsp.service.MemberServiceImpl;

@WebServlet("/common/regist")
public class Regist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/views/common/registForm.jsp"; 
		
		request.getRequestDispatcher(url).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/WEB-INF/views/common/regist_success.jsp";
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String message = null;
		
		MemberVO member = new MemberVO();
		
		member.setEmail(email);
		member.setId(id);
		member.setName(name);
		member.setPhone(phone);
		member.setPwd(pwd);
		
		MemberService service = MemberServiceImpl.getInstance();
		try {
			int result = service.regist(member);
			if(result == 1) {
				message = "회원가입이 완료 되었습니다.";
				request.setAttribute("id", id);
				request.setAttribute("pwd", pwd);
				request.setAttribute("name", name);
				request.setAttribute("email", email);
				request.setAttribute("phone", phone);
			} else {
				url = "/WEB-INF/views/common/regist_fail.jsp";
				message = "회원가입이 실패하였습니다.";
			}
			request.setAttribute("message", message);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher(url).forward(request, response);
	}
	
}














