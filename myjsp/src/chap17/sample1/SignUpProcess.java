package chap17.sample1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUpProcess
 */
@WebServlet("/sample1/process")
public class SignUpProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//가입 정보가 유효하면(id와 pw가 다르면) 
		if(id != null && pw != null && !id.equals(pw)) {			
				//가입처리 하고 완료페이지 출력(forward로)
				request.setAttribute("userId", id);
				String path = "/chap17/lecture/sample1/done.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(path);
				dispatcher.forward(request, response);
		}
		
		//가입 정보가 유효하지 않으면
		else {
			//form으로 redirect form으로 redirect
			HttpSession session = request.getSession();
			session.setAttribute("formId", id);
			session.setAttribute("formPw", pw); //유효하지 않아서 되돌아가도 적어둔 id와 pw를 session에 attribute로 담아둬서 재사용 가능
			
			String path = request.getContextPath() + "/sample1/signup";
			response.sendRedirect(path);
			
		}
		
	}

}
