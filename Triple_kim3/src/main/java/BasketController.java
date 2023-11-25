

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.svc.BasketService;

/**
 * Servlet implementation class BasketController
 */
@WebServlet("/BasketController")
public class BasketController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BasketController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    private String uri;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		uri = request.getRequestURI();
		
		if(uri.equals("/Triple_kim3/product/save")) {
			
			String user_id = (String) request.getSession().getAttribute("id");
			String pid = request.getParameter("id");
			int size = Integer.parseInt(request.getParameter("size"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			
			BasketService basket = BasketService.getInstance();
			
			System.out.println(user_id+ " : " + pid +" : " +size +" : " + quantity);
			boolean result = basket.addProductById(user_id, pid, size, quantity);
			
			if(result)
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
