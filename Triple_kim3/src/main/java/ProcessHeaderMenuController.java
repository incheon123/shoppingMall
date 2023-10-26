

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcessHeaderMenuController
 */
public class ProcessHeaderMenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessHeaderMenuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = request.getServletPath();
		
		RequestDispatcher dispatcher = null;
		
		if(url.equals("/view/login")) {
			System.out.println(url);
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/login.jsp");
		}else if(url.equals("/view/membership")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/membership.jsp");
		}else if(url.equals("/view/basket")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/basket.jsp");
		}else if(url.equals("/view/mypage/profile")) {
			System.out.println(url);
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/profile.jsp");
		}
		
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
