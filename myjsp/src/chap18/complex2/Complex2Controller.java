package chap18.complex2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ComplexController2
 */
@WebServlet("/Complex2Controller")
public class Complex2Controller extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);

	}
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//2단계 요청 파악
		//request 객체로부터 사용자의 요청을 파악하는 코드
		String type = request.getParameter("type");
		
		//3단계, 요청한 기능 수행
		//사용자에 요청에 따라 알맞은 코드
		Object resultObject = null;
		ModelInterface model = null;
		
		if(type == null || type.equals("greeting")) {
			model = new Model1();			
		}else if(type.equals("date")) {
			model = new Model2();			
		}else {
			resultObject = "Invalid Type";
		}
		
		resultObject = model.execute();
		
		//4단계, request난 session에 처리 결과 저장
		request.setAttribute("result", resultObject);
		
		//5단계, RequestDispatcher를 사용하여 알맞은 뷰로 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/c/simpleView.jsp");
		dispatcher.forward(request, response);
	}

}