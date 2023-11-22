

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.LogisticProduct;
import com.beans.LogisticProducts;
import com.beans.Product;
import com.svc.*;

import module.ProductId;

import com.google.gson.Gson;
import com.svc.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.io.*;
import java.util.*;

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
		String url = request.getServletPath();
		
		if(url.equals("/get/logistic_product")) {
			if(request.getParameter("enroll").equals("true")) enroll = "true";
			
			LogisticProductService lps = new LogisticProductService();
			LogisticProducts logi_products = lps.getLogisticProduct(enroll);
			
			Gson gson = new Gson();
			String out = gson.toJson(logi_products);
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("application/json");
			response.getWriter().write(out);
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String host = request.getServerName();
		int port = request.getServerPort();
		String redirectPath = host+port+request.getContextPath();
		
		
		request.setCharacterEncoding("utf-8");
		
		String path = "/home/kimtaekhyun/Desktop/upload_img";
		File file = new File(path);
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setSizeThreshold(1024 * 1024);
		factory.setRepository(file);
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		try {
			Product p = new Product();
			List items = upload.parseRequest(request);
			System.out.println(items.size());
			Iterator params = items.iterator();
			
			while(params.hasNext()) {
				FileItem item = (FileItem) params.next();
				if(item.isFormField()) {
					String name = item.getFieldName();
					String value = item.getString("utf-8");
					
					if(name.equals("logi_company_id")) {
						p.setLogi_id(value);
					}else if(name.equals("logi_product_id")) {
						p.setSupply_product_id(value);
					}else if(name.equals("warehousing_date")) {
						p.setSupply_product_date(value);
					}else if(name.equals("price")) {
						p.setPrice(Integer.parseInt(value));
					}else if(name.equals("point")) {
						p.setPoint(Integer.parseInt(value));
					}else if(name.equals("super_category")) {
						p.setSuper_category(Integer.parseInt(value));
					}else if(name.equals("sub_category")) {
						p.setSub_category(Integer.parseInt(value));
					}else if(name.equals("short_desc")) {
						p.setShort_desc(value);
					}else if(name.equals("detail_desc")) {
						p.setDetail_desc(value);
					}
					
				}else {
					String fileFieldName = item.getFieldName();
					String fileName = item.getName();
					
					//업로드한 파일(이미지)의 이름을 product 객체에 저장한다
					p.setImg_url(fileName);
					
					String contentType = item.getContentType();
//					System.out.println(fileFieldName + ", " + fileName + ", " + contentType);
					fileName = fileName.substring(fileName.lastIndexOf("\\") +1);
					
					
					File uploadFile = new File(path + "/" + fileName);
					item.write(uploadFile);
					
					
				}
			}
			
			//물류회사코드+공급상품코드+일자 이렇게 비교해서 (물류상품테이블에서) 사이즈 갖고와서 상품 테이블에 넣고 상품사이즈에는 사이즈 넣고
			//그리고 물류상품테이블에서 추가한 상품의 enroll을 변경한다
			System.out.println(p);
			
			p.setPid(ProductId.generatePid(p.getLogi_id(), p.getSupply_product_id()));
			ProductService ps = new ProductService();
			
			//삽입
			ps.putProduct(p);
			
			//공급상품의 enroll 여부를 변경한다
			ps.updateLogiProductEnroll(p.getLogi_id(), p.getSupply_product_id(), p.getSupply_product_date(), "false");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/adminProduct.jsp");
		response.sendRedirect(request.getContextPath());
	}

}
