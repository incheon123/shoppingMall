

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.*;

import com.jdbc.*;
import com.svc.*;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.invalidate();
		RequestDispatcher dp = request.getRequestDispatcher("/WEB-INF/view/index.jsp");
		dp.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("userId");
		String pw = request.getParameter("userPassword");
		
		User loginUserInfo = new User();
		loginUserInfo.setId(id);
		loginUserInfo.setPw(pw);
		
		MemberService login = new MemberService();
		User loginUser = login.getLoginUser(loginUserInfo);
		
		String root = request.getServletContext().getContextPath();
		if(loginUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("id", loginUser.getId());
			
			//로그인 성공
			
			response.sendRedirect(root);
		}else {
			request.getSession().setAttribute("result", "false");
			response.sendRedirect(root + "/view/login");
		}
	}

}