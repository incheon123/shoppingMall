

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.beans.*;
import com.beans.*;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OrderController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/WEB-INF/view/checkOrder.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getServletPath();
		
		if(uri.equals("/view/checkOrder")) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/checkOrder.jsp");
			dispatcher.forward(request, response);
			
		}else if(uri.equals("/view/success")) {
			
			//주문자정보
			String uid = (String) request.getSession().getAttribute("id");
			String uname = request.getParameter("uname");
			String ptel = request.getParameter("ptel");
			String addr1 = request.getParameter("addr1");
			String addr2 = request.getParameter("addr2");
			
			//주문상품정보
			String[] pid = request.getParameterValues("pid"); // 상품이름
			String[] pname = request.getParameterValues("pname"); // 상품이름
			String[] quantity = request.getParameterValues("quantity"); // 구매수량
			String[] psize = request.getParameterValues("psize"); //신발사이즈
			String[] delivery = request.getParameterValues("delivery"); //배송비
			String[] price = request.getParameterValues("price"); //상품 단가
			String[] totalProductPrice = request.getParameterValues("totalPrice"); // 최종상품금액			
			
			//결제자정보
			String payment_user = request.getParameter("name");
			String payment_method = request.getParameter("payment_method");
			String payment_card_company = request.getParameter("card_company");
			String payment_num = request.getParameter("card_num");
			String payment_totalPrice = request.getParameter("totalPrice");
			
			Order order = new Order();
			order.setUid(uid);
			order.setUname(uname);
			order.setPtel(ptel);
			order.setAddr1(addr1);
			order.setAddr2(addr2);
			
			OrderProduct order_product;
			for(int i = 0; i < pid.length; i++) {
				order_product = new OrderProduct();
				
				order_product.setPid(pid[i]);
				order_product.setPname(pname[i]);
				order_product.setQuantity(Integer.parseInt(quantity[i]));
				order_product.setPsize(Integer.parseInt(psize[i]));
				order_product.setDelivery(Integer.parseInt(delivery[i]));
				order_product.setPrice(Integer.parseInt(price[i]));
				order_product.setTotalProductPrice(Integer.parseInt(totalProductPrice[i]));
				
				order.addProduct(order_product);
			}
			
			order.setPayment_user(payment_user);
			order.setPayment_method(payment_method);
			order.setPayment_card_company(payment_card_company);
			order.setPayment_num(payment_num);
			order.setPayment_totalPrice(payment_totalPrice);
			
			//오더서비스클래스에 오더 dto 넘기기
			//1. 상품 포인트 계산해서 사용자 계정에 포인트 지급
			//2. 구매한 상품 수량에 맞춰 재고량 업데이트( 지금 같은 경우는 제거하기)
			//3. 주문번호, 결제번호 발행하기
			//4. 주문테이블에 주문정보 집어넣기
			//5 결제테이블에 결제정보 집어넣기
			//6 사용자에게 주문성공페이지 띄우고 정보 집어넣기
			//7 장바구니에서 주문한 상품 제거
			
			System.out.println(payment_user + ", " + payment_method + ", " + payment_card_company + ", " + payment_num + ", " + payment_totalPrice);
//			System.out.println(pname[0] + ", " + quantity[0] + ", " + psize[0] + ", " + delivery[0] + ", " + price[0] +", " + totalProductPrice[0]);
//			System.out.println(uid + ", " + uname + ", " + ptel + ", " + addr1 + ", " + addr2);
		}
	}

}
