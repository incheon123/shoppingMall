

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Product;
import com.svc.ProductService;


//@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private int product_id;
	private String uri;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		uri = request.getRequestURI();
		product_id = Integer.parseInt(request.getParameter("id"));
		
		if(uri.equals("/Triple_kim3/product")) {
			try {
				ProductService service = new ProductService();
				Product product = service.getProductById(product_id);
				request.setAttribute("product", product);
				
			}catch(Exception e) {
				System.out.println("sql error");
				e.printStackTrace();
			}
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/product.jsp");
			dispatcher.forward(request, response);
		}else if(uri.equals("/Triple_kim3/product/save")) {
			System.out.println("Holy Sh**");
			//ajax 응답받아서 코드 실행
			//장바구니 테이블에 요청받은 상품 집어넣고 ㄱㄱ하면됨
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
