package chap20.lecture;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static String url;
	private static String user;
	private static String password;
	
	public static void setUrl(String url) {
		DBUtil.url = url;
	}
	
	public static void setUser(String user) {
		DBUtil.user = user;
	}
	
	public static void setPassword(String password) {
		DBUtil.password = password;
	}
	
	public static Connection getConnection () {
		Connection con = null;
		//Connection에 필요한 url, user, password를 어플리케이션이 실행 될 때 가장 먼저 실행되는 Listener에서 유틸목적에 이 클래스에 set함
		//따라서 이 클래스의 getConnection메소드만 사용하면 url, user, password와 Connection객체 생성 코드를 대체할 수 있음
		try {
			con = DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
}
