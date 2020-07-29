package com.javalec.ex;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet (1개의 페이지) 생명주기 테스트 서블릿.
 * 선처리,init service doget dopost destroy,후처리
 */
@WebServlet("/LC1")
public class LifeCycleEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public LifeCycleEx01() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public void init() throws ServletException {
		System.out.println("init()메소드가 최초1번 호출됨");
		System.out.println("객체생성시 바로 시행될 명령어는 여기에 넣어야 한다.");
	}
	@Override
	public void destroy() {
		System.out.println("destroy()메소드가 최초 1번 호출");
		System.out.println("객체 종료시 바로 실행할 명령어는 여기에 넣어야한다.");
	}
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()메소드는 요청시마다 실행");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()메소드는 요청시마다 실행");
	}
	@PostConstruct
	private void initPostConstruct() {
		System.out.println("선처리실행");
		System.out.println("init() 보다 먼저 실행");
	}
	@PreDestroy
	private void destroyPreDestroy() {
		System.out.println("후처리실행");
		System.out.println("destroy()메소드 실행후에 실행되는 메소드이다.");
		
	}
	
}
