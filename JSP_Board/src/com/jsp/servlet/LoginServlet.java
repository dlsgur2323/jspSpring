package com.jsp.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.action.ApplicationContext;
import com.jsp.dao.MemberDAO;
import com.jsp.dao.MemberDAOImpl;
import com.jsp.dispatcher.ViewResolver;
import com.jsp.dto.MemberVO;
import com.jsp.exception.InvalidPasswordException;
import com.jsp.exception.NotFoundIDException;
import com.jsp.mybatis.OracleMyBatisSqlSessionFactory;
import com.jsp.request.SearchCriteria;
import com.jsp.service.MemberService;
import com.jsp.service.MemberServiceImpl;

@WebServlet("/common/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private MemberService memberService;
	
	@Override
	public void init() throws ServletException {
		memberService = (MemberService)ApplicationContext.getApplicationContext().get("memberService");
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/common/loginForm";
		ViewResolver.view(url, request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "redirect:/index.do";
		
		//로그인 처리
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		
		try {
			memberService.login(id, pwd, request.getSession());
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NotFoundIDException | InvalidPasswordException e) {
			url="redirect:/";
			request.getSession().setAttribute("msg", e.getMessage());
		}
		
		ViewResolver.view(url, request, response);
	}

}













