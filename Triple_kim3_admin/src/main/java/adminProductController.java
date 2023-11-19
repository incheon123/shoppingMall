

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.LogisticProducts;
import com.google.gson.Gson;
import com.svc.*;

/**
 * Servlet implementation class IndexController
 */
@WebServlet("/IndexController")
public class adminProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String enroll = "false";
		
		if(request.getParameter("enroll").equals("true")) enroll = "true";
		
		LogisticProductService lps = new LogisticProductService();
		LogisticProducts logi_products = lps.getLogisticProduct(enroll);
		Gson gson = new Gson();
		String out = gson.toJson(logi_products);
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		response.getWriter().write(out);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
