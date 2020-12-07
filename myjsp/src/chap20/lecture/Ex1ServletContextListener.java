package chap20.lecture;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex1ServletContextListener
 *
 */
@WebListener
public class Ex1ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex1ServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         System.out.println("우리 앱이 종료되었습니다."); //어플리케이션이 종료될 때 실행하게 됨
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         System.out.println("우리 앱이 실행되었습니다."); //어플리케이션이 실행될 때 가장 먼저 실행하게 됨
      // 1. jdbc driver 로딩
      //어플리케이션이 실행될 때 가장 먼저 실행하게 되므로, 다른 서블릿보다 먼저 실행되어서, Listener에다 코드를 옮겨도 정상작동
 		try {
 			Class.forName("oracle.jdbc.driver.OracleDriver");
 		} catch (ClassNotFoundException e1) {
 			// TODO Auto-generated catch block
 			e1.printStackTrace();
 		}
    }
	
}
