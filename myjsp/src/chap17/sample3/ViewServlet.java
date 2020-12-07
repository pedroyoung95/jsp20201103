package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
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
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {		
		//1.드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2.연결 생성
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		con = DriverManager.getConnection(url, user, password);
		
		//3.statement 생성
		stmt = con.createStatement();	
		
		//4.쿼리 실행
		rs = stmt.executeQuery(sql);
		
		//5.결과 처리	
		
		if(rs.next()) {
			p.setTitle(rs.getString(1));
			p.setBody(rs.getString(2));			
		}
	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//6.statement, 연결 닫기
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}			
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
