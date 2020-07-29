package com.javalec.ex;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Form_ok 
 * html을 넣기 힘듦. 그래서 controller로 사용
 */
//@WebServlet("/F_ok")  /**단축이름 여기서 매핑이 안될경우 web.xml에서 수동으로 연결 (보안 그리고 주소창이 길어지는것을 방지)**/
public class Form_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
    	생성자
     */
    public Form_ok() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 메소드doGet //주소로 바로 들어오거나 form의 method="get" 이면 doGet실행
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet실행");
	}

	/**
	 메소드doPost  //form의 method="post" 이면 doPost실행
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doPost실행");
	}

}
