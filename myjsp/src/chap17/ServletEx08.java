package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx8
 */
@WebServlet(value = "/ex08", loadOnStartup = 1) //어노테이션에 loadONStartup에 정수값을 넣으면 요청을 받지 않아도 init()메소드를 1번 실행
public class ServletEx08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private int i = 0; -> 필드를 여러 메소드에서 공유하며 사용하는 것은 지양(멀티스레드에서 하나의 변수나 객체를 공유할 때 생기는 문제가 발생함)
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx08() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	//서블릿은  init()메소드를 맨 처음 딱 한 번 실행됨 
    	//서블릿을 실행할 때 최초로, 한 번 실행되어야 할 코드가 있다면 그 코드는 init()메소드 안에 들어가면 됨
    	//전체 실행 순서 : Servlet클래스의 인스턴스 생성 -> init메소드 실행 -> doGet(), doPost() 등의 다른 메소드 실행
    	//두 번째 요청부터는 init메소드 실행 없이 진행
    	System.out.println("init method 실행");
    	super.init();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ex08 doGet method");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
