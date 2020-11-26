package chap17;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class My_Servlet
 */
//@WebServlet("/My")
public class My_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public My_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletConfig config = getServletConfig();
    	String url = config.getInitParameter("dburl");
    	String id = config.getInitParameter("dbid");
    	String pw = config.getInitParameter("dbpw");
    	
    	ServletContext application = getServletContext();
    	List<String> list = new ArrayList<>();
    	
    	String sql = "SELECT ename FROM employee";
    	
    	try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, id, pw);
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				list.add(rs.getString(1)); 				
			}
			application.setAttribute("database", list);
			
			if(stmt != null) {
				stmt.close();
			}

			if (con != null) {
				con.close();
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	super.init();
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
		if (id == null) {
			id = "0";
		}
		int idx = Integer.valueOf(id);
		
		//db조회(라고 가정)
		ServletContext application = getServletContext();
		List<String> list = (List<String>) application.getAttribute("database");		
		String name = list.get(idx-1);
				
		//request attribute에 set
		request.setAttribute("name", name);
				
		//forward
		String path = "/chap17/myView.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
