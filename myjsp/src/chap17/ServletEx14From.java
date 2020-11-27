package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletEx14
 */
@WebServlet("/ex14From")
public class ServletEx14From extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx14From() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ex14From 열심히 일함...");
		
		//redirect는 두 개의 서로 다른 객체를 생성해서 다른 쪽에서 request의 attribute값을 읽을 수 없음
		//그래서 request가 아닌 session을 통해서 값을 전달해야 함
		
		//단계 1.session 객체 만들기(request에서 session 객체 꺼내기)
		HttpSession session = request.getSession(); 
		
		request.setAttribute("data1", "value1");		
		
		//단계 2. session에 attribute 할당
		session.setAttribute("data2", "value2");
		
		response.sendRedirect("ex14To");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
