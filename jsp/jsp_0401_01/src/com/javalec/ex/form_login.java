package com.javalec.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class form_login
 */
@WebServlet("/f_login")
public class form_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public form_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet방식으로 열림");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer=response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>doGet페이지입니다</h2>");
		writer.println("<p>로그인되었습니다</p>");
		writer.println("<p>id:"+id+"</p>");
		writer.println("<p>pw:"+pw+"</p>");
		writer.println("<p>name:"+name+"</p>");
		writer.println("<p>로그인하기위해서 form으로 작성</p>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost방식으로 열림");
		//post에서 아래거 안쓰면 다 깨진다.
		request.setCharacterEncoding("utf-8");
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String name=request.getParameter("name");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer=response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>doPost페이지입니다</h2>");
		writer.println("<p>로그인되었습니다</p>");
		writer.println("<p>id:"+id+"</p>");
		writer.println("<p>pw:"+pw+"</p>");
		writer.println("<p>name:"+name+"</p>");
		writer.println("<p>로그인하기위해서 form으로 작성</p>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}

}
