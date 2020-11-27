package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx13
 */
@WebServlet("/ex13")
public class ServletEx13 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx13() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ex13 열심히 일함~~~");
		//response객체의 redirect로 보내는 방법
		//String path = "ex12"; //상대경로로 보냄
		//redirect는 응답객체이므로, 브라우저 입장이기 때문에 context root(최초로 /가 나타나는 곳)이 'localhost:8080/~'이므로 절대경로는
		//String path = "/myjsp/ex12";
		//브라우저는 어떤 것이 context root인지 모르기 때문		
		String path = request.getContextPath() + "/ex12"; //root가 어디가 될지 모르므로, getContextPath()메소드를 사용하는 것이 안전
		response.sendRedirect(path);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
