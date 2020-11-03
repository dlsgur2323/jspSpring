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
import com.jsp.utils.ViewResolver;

@WebServlet("/common/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/common/login"; 
		
		ViewResolver.view(url, request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "redirect:/common/main";
		
		String id = request.getParameter("id").trim();
		String pwd = request.getParameter("pwd").trim();
		String message = null;
		
		MemberService service = MemberServiceImpl.getInstance();
		try {
			MemberVO member = service.getMember(id);
			if(!(member != null && member.getPwd().equals(pwd))) {
				url = "/common/loginFail";
				message = "아이디 또는 패스워드가 일치하지 않습니다.";
				request.setAttribute("message", message);
			} else {
				request.getSession().setAttribute("loginUser", member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ViewResolver.view(url, request, response);
	}

}
