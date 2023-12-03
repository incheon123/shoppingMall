import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.svc.*;
/**
 * Servlet implementation class ProcessHeaderMenuController
 */
public class ParsePathController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParsePathController() {
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
		}else if(url.equals("/view/mybasket")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/basket.jsp");
		}else if(url.equals("/view/mypage/profile")) {
			System.out.println(url);
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/profile.jsp");
		}else if(url.equals("/logout")) {
			System.out.println(url);
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/index.jsp");
		}else if(url.equals("/create/account")) {
			System.out.println(url);
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/membership.jsp");
		}else if(url.equals("/view/success")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/success.jsp");
		}else if(url.equals("/view/mypage/order")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/order.jsp");
		}else if(url.equals("/view/mypage/inquiry")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/myinquiry.jsp");
		}else if(url.equals("/view/mypage/review")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/myreview.jsp");
		}else if(url.equals("/view/inquiry")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/inquiry.jsp");
		}else if(url.equals("/view/inquirys")) {
			InquiryService is = new InquiryService();
			request.getSession().setAttribute("inquirys", is.getInquirys());
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/inquirys.jsp");
		}else if(url.equals("/view/reviews")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/reviews.jsp");
		}else if(url.equals("/view/review")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/review.jsp");
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