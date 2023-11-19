

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
		System.out.println("basketController 실행");
		uri = request.getRequestURI();
		if(uri.equals("/Triple_kim3/product/save")) {
			int pid = Integer.parseInt(request.getParameter("id"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			
			System.out.println("pid : " + pid + ", quantity : " + quantity);
			
			BasketService basket = BasketService.getInstance();
			boolean result = basket.addProductById(pid, quantity);
			
			if(result)
				response.getWriter().write("true");
			else
				response.getWriter().write("false");
			
			//ajax 응답받아서 코드 실행
			//장바구니 테이블에 요청받은 상품 집어넣고 ㄱㄱ하면됨
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
