package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/sample3/post/detail")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Post post = getPost(id);
		
		request.setAttribute("post", post);		
		
		String path = "/WEB-INF/view/chap17/detail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	private Post getPost(String id) {
		String sql = "SELECT title, body FROM post WHERE id=" + id; 
		
		Post p = new Post();
		try {		
		//1.드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2.연결 생성
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		Connection con = DriverManager.getConnection(url, user, password);
		
		//3.statement 생성
		Statement stmt = con.createStatement();	
		
		//4.쿼리 실행
		ResultSet rs = stmt.executeQuery(sql);
		
		//5.결과 처리	
		
		while(rs.next()) {
			p.setTitle(rs.getString(1));
			p.setBody(rs.getString(2));			
		}
		
		//6.statement, 연결 닫기
		stmt.close();
		con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
