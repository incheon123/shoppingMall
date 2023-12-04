

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Product;
import com.beans.Products;
import com.svc.ProductService;
import com.svc.BasketService;


//@WebServlet("/product")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private String uri;
	private String product_id;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		uri = request.getRequestURI();
		product_id = request.getParameter("id");
		
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
		}else if(uri.equals("/Triple_kim3/view/product")) {
			String gender = request.getParameter("gender");
			String age = request.getParameter("age");
			String spcg = request.getParameter("spcg");
			String sbcg = request.getParameter("sbcg");
			
			ProductService service = new ProductService();
			Products products;
			
			
			//kids 상품일 때
			if(gender.equals("kids")) {
				//전체 상품
				if(spcg.equals("none")) {
					products = service.getTotalProducts(null, age, sbcg);
				}else { //전체 상품 아닌 경우
					products = service.getProducts(null, age, spcg, sbcg);
				}
			}else {
				if(spcg.equals("none")) {
					products = service.getTotalProducts(gender, age, sbcg);
				}else { //전체 상품 아닌 경우
					products = service.getProducts(gender, age, spcg, sbcg);
				}
			}
			request.getSession().setAttribute("products", products);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/products.jsp");
			dispatcher.forward(request, response);
			
			
			
			
		}else if(uri.equals("/Triple_kim3/view/sports/*")) {
			//아직 스포츠 상품 추가안해서 구현안함
		}else if(uri.equals("/Triple_kim3/view/sail_product")) {
			int category = Integer.parseInt(request.getParameter("category"));
		}else if(uri.equals("/Triple_kim3/view/limited_product")) {
			int category = Integer.parseInt(request.getParameter("category"));
		}else if(uri.equals("/Triple_kim3/view/soldout_product")) {
			int category = Integer.parseInt(request.getParameter("category"));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
