package chap14.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TransactionEx1Servlet
 */
@WebServlet("/sample/transaction1")
public class TransactionEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = getConnection();
		
		//connection객체가 트랜잭션을 관리할 수 있음
		//쿼리문을 실행하는 두 update메소드가 같은 connection객체를 사용하게 함으로써, 오류가 날 경우  해당 메소드에서 rollback을 통해 복구 가능하게 만듦
		try {
			con.setAutoCommit(false); //commit은 기본설정이 자동실행이므로, setAutoCommit을 false로 해두어서 자동실행을 막음

			//1. ironman의 잔고 50 빼기
			update1(con);
			//2. captain의 잔고 50 더하기(ironman이 captain에게 50원 이체하는 상황)
			update2(con);
			
			con.commit(); //수동으로 commit 실행
			
		} catch (Exception e) {
			e.printStackTrace();
			if (con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}		
	}
	
	private Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms";
		String password = "admin";
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return con;
	};
	
	private void update1(Connection con) {		
		String sql = "UPDATE bank "
						+ "SET money=(money-50) "
						+ "WHERE name='ironman'";	
		
		try {
		//3.statement 생성
		Statement stmt = con.createStatement();			
		//4.쿼리 실행
		int row = stmt.executeUpdate(sql);
		//5.결과 처리				
		//6.statement, 연결 닫기
		stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
	
	private void update2(Connection con) {
		String sql = "UPDATE bank "
						+ "SET money=(money+50) "
						+ "WHERE name='captain2'";
		
		//없는 사람한테 돈이 이체되는 문제를 막고자 해당 쿼리 실행되어도 rollback되도록 코드 작성
		//다른 오류사항이 발생했을 때도 해당 오류사항이 발생할 경우에 rollback되도록 코드 작성
		try {		
		//3.statement 생성
		Statement stmt = con.createStatement();			
		//4.쿼리 실행
		int row = stmt.executeUpdate(sql);	
		//executeUpdate메소드는 영향을 미치는 record의 개수를 int타입으로 리턴함
		//목적에 따라 if조건문으로 con.rollback()메소드를 실행시키면 목적에 맞지 않는 문제에 대해서 rollback하게 됨
		if(row == 0 ) {
			con.rollback();
		}
		//5.결과 처리				
		//6.statement, 연결 닫기
		stmt.close();
		} catch (Exception e) {
			try {
				con.rollback(); //try되지 않을 때도 복구하기 위해 catch블럭에서도 rollback실행 
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
	};

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
