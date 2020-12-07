package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/sample3/post/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//list <- select sql
		List<Post> posts = getPosts(); 
		
		//request setAttribute(list)하기
		request.setAttribute("posts", posts);
		
		//forward
		String path = "/WEB-INF/view/chap17/main.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	private List<Post> getPosts() {
		List<Post> list = new ArrayList<>();
		
		String sql = "SELECT id, title FROM post ORDER BY id DESC"; //post테이블에서 id, title을 id의 내림차순으로 select

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
			Post p = new Post(); 
			//MainServlet, ViewServlet은 화면에 띄워주는 view역할 jsp에게  db에서 받은 정보를 건내주기 위해 Post클래스의 객체를 이용해야 함
			//Post클래스의 객체에다가 db에서 받은 값을 set해주고 그걸 view역할 jsp에게 전달
			p.setId(rs.getInt(1));
			p.setTitle(rs.getString(2));
			list.add(p);
		}
		
		//6.statement, 연결 닫기
		stmt.close();
		con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
