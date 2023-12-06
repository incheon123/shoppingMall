import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.*;
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
		request.setCharacterEncoding("UTF-8");
		
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
			System.out.println((String)request.getSession().getAttribute("id"));
			
			//현재 로그인한 유저의 계정 정보를 가져온다
			MemberService ms = new MemberService();
			User result = ms.getAccountByUid((String)request.getSession().getAttribute("id"));
			
			request.getSession().setAttribute("user", result);
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
			String uid = (String) request.getSession().getAttribute("id");
			System.out.println(uid);
			OrderService os = new OrderService();
			OrderResult or = os.getOrders(uid);
			
			request.getSession().setAttribute("orders", or);
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/order.jsp");
		}else if(url.equals("/view/mypage/inquiry")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/myinquiry.jsp");
		}else if(url.equals("/view/mypage/review")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/myreview.jsp");
		}else if(url.equals("/view/inquiry")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/inquiry.jsp");
		}else if(url.equals("/view/inquirys")) {
			
			Integer pageNo = 1;
			int startNo = 1;
			int endNo = 5;
			
			if(request.getParameter("pageNo") != null) {
				pageNo = Integer.parseInt(request.getParameter("pageNo"));
				startNo = (5 * (pageNo-1)) + 1;
				endNo = startNo + 4;
			}
			
			InquiryService is = new InquiryService();
			request.getSession().setAttribute("pageNo", pageNo);
			request.getSession().setAttribute("length", is.getSize());
			request.getSession().setAttribute("inquirys", is.getInquirys(startNo, endNo));
			
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/inquirys.jsp");
		}else if(url.equals("/view/reviews")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/reviews.jsp");
		}else if(url.equals("/view/review")) {
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/review.jsp");
		}else if(url.equals("/view/bbs_inquiry")) {
			String iid = request.getParameter("iid");
			
			InquiryService is = new InquiryService();
			Inquiry inquiry = is.getInquiry(iid);
			
			request.getSession().setAttribute("inq", inquiry);
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/bbsInquiry.jsp");
		}else if(url.equals("/update/account")) {
			User user = new User();
			user.setId((String)request.getSession().getAttribute("id"));
			user.setPw(request.getParameter("user_pw"));
			user.setName(request.getParameter("user_name"));
			user.setPhnTelNum(request.getParameter("user_ptel"));
			user.setHmTelNum(request.getParameter("user_htel"));
			user.setEmail(request.getParameter("user_email"));
			user.setGender(request.getParameter("user_gender"));
			user.setBirth(request.getParameter("user_birth"));
			user.setAddr(request.getParameter("user_addr"));
			
			System.out.println(user);
			
			MemberService ms = new MemberService();
			ms.updateAccountInfo(user);
			response.sendRedirect("/Triple_kim3/view/mypage/profile");
			
			return;
//			dispatcher = request.getRequestDispatcher("/WEB-INF/view/mypage/profile.jsp");
		}else if(url.equals("/view/order_detail")) {
			String oid = request.getParameter("oid");
			System.out.println(oid);
			
			OrderService os = new OrderService();
			dispatcher = request.getRequestDispatcher("/WEB-INF/view/orderDetail.jsp");
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