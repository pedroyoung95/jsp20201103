package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/sample3/post/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String title = request.getParameter("title");
			String body = request.getParameter("body");
			
			Post post = new Post();
			//수정해서 입력한 값을 Post객채에 set하고, 그 set한 값을 get으로 불러와서 그 값을 db에 업데이트 시키면 됨
			post.setId(Integer.parseInt(id));
			post.setTitle(title);
			post.setBody(body);
			
			update(post);
			
			response.sendRedirect(request.getContextPath() + "/sample3/post/main");			
	}
	
	private void  update(Post post) {
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		String sql = "UPDATE post SET title=?, body=? WHERE id=?";
		
		// 1. class loading
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		try(
				// 2. connection
				Connection con = DriverManager.getConnection(url, user, password);
				PreparedStatement stmt = con.prepareStatement(sql);
		) {			
			// 3. statement			
			stmt.setString(1, post.getTitle());
			stmt.setNString(2, post.getBody());
			stmt.setInt(3, post.getId());
			
			// 4. query
			rs = stmt.executeQuery();
			
			// 5. resultset
			//RemoveServlet, ModifySevlet은 db에서 받은 정보를 뷰쪽으로 넘길 필요X
			//db 쿼리문을 실행시키는 기능만 이뤄지면 되므로, Post클래스의 객체가 필요X
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

}
