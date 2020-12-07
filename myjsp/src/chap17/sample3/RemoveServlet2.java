package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class RemoveServlet2
 */
@WebServlet(name = "RemoveServlet2", urlPatterns = "/sample3/post/remove")
public class RemoveServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");		
		
		//delete하는 jdbc
		remove(id);
		
		response.sendRedirect(request.getContextPath() + "/sample3/post/main");
	}
	
	private void remove(String id) {
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		String sql = "DELETE FROM post WHERE id=?";
		
		
		
		try(
				// 2. connection
				Connection con = DriverManager.getConnection(url, user, password);
				PreparedStatement stmt = con.prepareStatement(sql);
		) {			
			// 3. statement			
			stmt.setInt(1, Integer.parseInt(id));
			
			// 4. query
			rs = stmt.executeQuery();
			
			// 5. resultset
			//RemoveServlet, ModifySevlet은 db에서 받은 정보를 뷰쪽으로 넘길 필요X
			//db 쿼리문을 실행시키는 기능만 이뤄지면 되므로, Post클래스의 객체가 필요X
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
