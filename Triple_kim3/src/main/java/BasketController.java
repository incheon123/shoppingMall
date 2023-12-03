

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.svc.BasketService;
import com.beans.*;
import java.util.*;

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
			
		}else if(uri.equals("/Triple_kim3/view/basket")) {
			//먼저 기본 상품 데이터 가져오기
			//그리고 가공된 상품 데이터 가져오기
			
			String user_id = (String) request.getSession().getAttribute("id");
			
			if(user_id != null) {
				
				BasketService basket = BasketService.getInstance();
				
				//최종 장바구니 상품을 가져오기 위한 상품. 개개인의 상품을 구별하기 위해 pk로 user_id를 보내준다 
				ArrayList<BasketProduct2> ingredient = basket.getProductByUid(user_id);
				
				//최종 장바구니 상품을 담을 list
				ArrayList<BasketProduct> basketList = new ArrayList<>();
				
				//ingredient에 있는 데이터 3개를 매개변수로 보내서 최종 장바구니 상품을 가져온다
				//최종 장바구니 상품을 가져와서 basketList에 추가한다
				for(BasketProduct2 bp : ingredient) {
					BasketProduct product = basket.getProduct(bp.getUser_id(), bp.getPid(), bp.getSize());
					basketList.add(product);
				}
				//list를 장바구니 페이지에 보낸다
				request.getSession().setAttribute("product", basketList);
				response.sendRedirect("mybasket");
	//			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/basket.jsp");
	//			dispatcher.forward(request, response);
				return;
			}else {
				response.sendRedirect("login");
			}
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
