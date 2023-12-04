

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.beans.*;
import com.svc.InquiryService;
/**
 * Servlet implementation class InquiryController
 */
@WebServlet("/InquiryController")
public class InquiryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InquiryController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String uid = (String) request.getSession().getAttribute("id");
		String type = request.getParameter("inquiry_type");
		String title = request.getParameter("title");
		String desc = request.getParameter("desc");
		
		if(type.equals("order")) {
			type="주문";
		}else if(type.equals("payment")) {
			type="결제";
		}else if(type.equals("account")) {
			type="계정";
		}else if(type.equals("etc")) {
			type="기타";
		}
		
		Inquiry i = new Inquiry();
		i.setUid(uid);
		i.setType(type);
		i.setTitle(title);
		i.setDesc(desc);
		
		InquiryService is = new InquiryService();
		int result = is.insertInquiry(i);
		
		response.sendRedirect("/Triple_kim3/view/inquirys");
	}

}
