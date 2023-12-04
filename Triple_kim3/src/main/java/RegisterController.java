

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.User;

import com.svc.*;
/**
 * Servlet implementation class RegisterController
 */
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegisterController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//check duplicate
		MemberService duplicateChkService = new MemberService();
		
		boolean chk = duplicateChkService.checkDuplicateId(request.getParameter("id"));
		
		if(chk) {
			System.out.println(request.getParameter("id") + "는 중복됩니다");
			response.getWriter().write("true");
		}else {
			System.out.println(request.getParameter("id") + "는 중복안됩니다");
			response.getWriter().write("falses");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		MemberService regiService = new MemberService();
		
		String user_id     = request.getParameter("id");	
		String user_pw     = request.getParameter("pw");
		String user_name   = request.getParameter("name");
		String email  = request.getParameter("email");
		String domain = request.getParameter("server");
		String user_email = email + "@" +domain;
		String ptel1       = request.getParameter("ptel1");
		String ptel2       = request.getParameter("ptel2");
		String ptel3       = request.getParameter("ptel3");
		String user_ptel   = ptel1+ptel2+ptel3;
		String htel1       = request.getParameter("htel1");
		String htel2       = request.getParameter("htel2");
		String htel3       = request.getParameter("htel3");
		String user_htel   = htel1+htel2+htel3;
		String addr1       = request.getParameter("addr1");
		String addr2       = request.getParameter("addr2");
		String user_addr       = addr1 + " " + addr2;
		String user_gender = request.getParameter("gender");
		String user_birth  = request.getParameter("birth");
		
		User temp = new User();
		temp.setId(user_id);
		temp.setPw(user_pw);
		temp.setName(user_name);
		temp.setEmail(user_email);
		temp.setPhnTelNum(user_ptel);
		temp.setHmTelNum(user_htel);
		temp.setAddr(user_addr);
		temp.setGender(user_gender);
		temp.setBirth(user_birth);
		
		
		System.out.println(temp);
//		User user = regiService.register(temp);
//		
//		if(user != null) {
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/login.jsp");
//			dispatcher.forward(request, response);
//		}
//		
//		
//		System.out.println(user_id);
//		System.out.println(user_pw);
//		System.out.println(user_name);
//		System.out.println(user_ptel);
//		System.out.println(user_htel);
//		System.out.println(user_addr);
//		System.out.println(user_gender);
//		System.out.println(user_birth);
		
	}

}
