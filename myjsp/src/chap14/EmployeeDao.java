package chap14;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class EmployeeDao {
	public static List<String> listEmployeeName() {
		List<String> list = new ArrayList<String>();
		
		Connection conn = null; 
		Statement stmt = null; 
		ResultSet rs = null; 
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
		String id = "c##mydbms";
		String pw = "admin";		
		
		String sql = "SELECT ename FROM employee";
		
		try {			
		
			//1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2.커넥션 생성
			
			conn = DriverManager.getConnection(url, id, pw);
			
			//3.statement 객체 생성
			stmt = conn.createStatement();
	
			//4. 쿼리 실행
			rs = rs = stmt.executeQuery(sql);
			
			//5. 쿼리 실행 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//6. statement 닫기
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//7. connection 닫기
			try {
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	public static List<String> getNameLike(String name) {
		List<String> list = new ArrayList<String>();
		
		Connection conn = null; 
		Statement stmt = null; 
		ResultSet rs = null; 
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
		String id = "c##mydbms";
		String pw = "admin";		
		
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE "
				+ "ename LIKE '%" + name + "%'";
		
		try {			
		
			//1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2.커넥션 생성
			
			conn = DriverManager.getConnection(url, id, pw);
			
			//3.statement 객체 생성
			stmt = conn.createStatement();
	
			//4. 쿼리 실행
			rs = rs = stmt.executeQuery(sql);
			
			//5. 쿼리 실행 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//6. statement 닫기
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//7. connection 닫기
			try {
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}		
		
		return list;
	}
	
	public static List<String> getNameList(String name, Boolean asc) {
		List<String> list = new ArrayList<String>();
		
		Connection conn = null; 
		Statement stmt = null; 
		ResultSet rs = null; 
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
		String id = "c##mydbms";
		String pw = "admin";		
		
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE "
				+ "ename LIKE '%" + name + "%' "
				+ "ORDER BY ename ";
		if(asc) {
			sql += "ASC";
		} else {
			sql += "DESC";
		}
		
		try {			
		
			//1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//2.커넥션 생성
			
			conn = DriverManager.getConnection(url, id, pw);
			
			//3.statement 객체 생성
			stmt = conn.createStatement();
	
			//4. 쿼리 실행
			rs = rs = stmt.executeQuery(sql);
			
			//5. 쿼리 실행 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		//6. statement 닫기
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			//7. connection 닫기
			try {
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	//AutoClosable이 구현되어있으므로, try-with 블럭으로 코드 단축
	public static List<String> getNameLike2(String name) {
		List<String> list = new ArrayList<String>();
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl"; 
		String id = "c##mydbms";
		String pw = "admin";		
		
		String sql = "SELECT ename "
				+ "FROM employee "
				+ "WHERE "
				+ "ename LIKE '%" + name + "%'";
		
		try {
			//1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try (
			//2.커넥션 생성
			Connection conn = DriverManager.getConnection(url, id, pw);
			//3.statement 객체 생성
			Statement stmt = conn.createStatement();
			) {
			//4. 쿼리 실행
			ResultSet rs = stmt.executeQuery(sql); 
			
			//5. 쿼리 실행 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		
		return list;
	}
}
