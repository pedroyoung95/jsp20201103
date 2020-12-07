package chap20.lecture;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex2ServletContextListener
 *
 */
@WebListener
public class Ex2ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex2ServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         System.out.println("우리 앱 실행 EX2");
         //web.xml에 context-param으로 설정된 parameter는 appliation에 저장되어있으므로 application(servletContext)로 불러오면 됨
         ServletContext application = sce.getServletContext();
         String val = application.getInitParameter("my-param1");
         System.out.println(val);
         
         String url = application.getInitParameter("jdbcUrl");
         String user = application.getInitParameter("jdbcUser");
         String password = application.getInitParameter("jdbcPassword");
         
         DBUtil.setUrl(url);
         DBUtil.setUser(user);
         DBUtil.setPassword(password);
         
         System.out.println(url);
         System.out.println(user);
         System.out.println(password);
         
         try (Connection con = DriverManager.getConnection(url, user, password);) {
        	 System.out.println(con);
         } catch(Exception e) {
        	 e.printStackTrace();
         }
    }
	
}
