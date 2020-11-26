package chap17;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SerlvetEx10
 */
@WebServlet("/ex10")
public class ServletEx10 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx10() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//일을 다른 곳으로 미루는 방법
		//<jsp:forward> 액션태그(하나의 request 공유)
		//response.sendRedirect()메소드(두 개의 request 생성)
		System.out.println("serlvet10 doGet 시행");
		
		//다른 곳으로 forward...(나머지 작업은 forward 된 곳에서 수행)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ex08");//forward로 넘겨받는 쪽(작업을 수행하는 쪽)의 url을 파라미터로
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
