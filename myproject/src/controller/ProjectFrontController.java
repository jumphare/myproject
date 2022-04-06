package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Action;
import service.ActionForward;


/**
 * Servlet implementation class ProjectFrontController
 */
@WebServlet("/ProjectFrontController")
public class ProjectFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String requestURI = request.getRequestURI();		//요청 uri를 구함
		String contextPath= request.getContextPath();		//컨텍스트패스(project명)를 구함
		String command = requestURI.substring(contextPath.length());
		
		System.out.println("requestURI: "+requestURI);		// /model2board/BoardInsert.do
		System.out.println("contextPath: "+contextPath);	    // /model2board
		System.out.println("command: "+command);			// /BoardInsert.do <-이걸로 제어함
		
		Action action=null;
		ActionForward forward=null;
		
		
		
		
	//포워딩 처리
		if(forward!=null) {
			if(forward.isRedirect()) {		//true=redirect 방식
				response.sendRedirect(forward.getPath());
			} else {		//dispatcher 방식
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			} 
		}
		
	}//doProcess end

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get");
		doProcess(request, response);			//doProcess() 호출
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("post");
		doProcess(request, response);			//doProcess() 호출
	}

}
