package chap17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx06
 */
@WebServlet("/ex06")
public class ServletEx06 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx06() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ex06 doGet method");
		response.setHeader("my-header", "my-value");
		//response.setHeader("content-type", "text/html; charset=UTF-8"); //내용물의 타입을 결정하는 response의 header를 설정하는 부분
		response.setContentType("text/html; charset=UTF-8"); //33행의 setHeader메소드와 같은 일(헤더 명만 빠진 것)
		
		PrintWriter out = response.getWriter();
		out.print("<h1>first html response</h1>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
