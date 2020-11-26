package chap17;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class ServletEx12
 */
@WebServlet("/ServletEx12")
public class ServletEx12 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx12() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	List<String> list = new ArrayList<>();
    	list.add("jake");
    	list.add("john");
    	list.add("dan");
    	list.add("peter");
    	application.setAttribute("database", list);
    	super.init();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if (id == null) {
			id = "0";
		}
		int idx = Integer.valueOf(id);
		
		//db조회(라고 가정)
		ServletContext application = getServletContext();
		List<String> list = (List<String>) application.getAttribute("database");		
		String name = list.get(idx);
		
		//request attribute에 set
		request.setAttribute("name", name);
		
		//forward
		String path = "/chap17/lecture/servletEx12View.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
		//모델-뷰-컨트롤러 패턴으로 각 파일의 역할 분석
		//servletEx12View.jsp 파일 : 뷰 역할(사용자에게 정보 표시 담당)
		//ServletEx12.java 파일 : 컨트롤러 역할(사용자로부터 받은 입력 처리)
		//ServletEx12.java파일 안 doGet메소드 안에 '//db조회'~'//forward'부분 : 모델 역할(핵심 기능과 데이터 보관)
		
;	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
