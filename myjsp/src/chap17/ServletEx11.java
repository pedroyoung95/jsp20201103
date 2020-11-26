package chap17;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx11
 */
@WebServlet("/ex11")
public class ServletEx11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx11() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("servlet 11 doGet method");
		
		//절대경로로 작성할 경우
		String path = "/chap17/lecture/servletEx11View.jsp"; 
		// 슬래시(/)로 시작되는 절대경로로 작성하려면 context root인 '/myjsp'를 빼고 /로 시작해서 나머지 경로를 작성
		
		//상대경로 작성할 경우
		//현재 요청 = "localhost:8080/myjsp/ex11"
		//jsp 풀 경로 = "localhost:8080/myjsp/chap17/lecture/servletEx11View.jsp"
		//상대경로는 현재 요청 경로를 기준으로 작성하는 것이므로, 현재경로와 다른 부분부터 슬래쉬로 시작하지 않고 작성
		//String path = "chap17/lecture/servletEx11View.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
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
