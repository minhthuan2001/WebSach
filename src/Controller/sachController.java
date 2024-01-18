package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.sachbean;
import bo.loaibo;
import bo.sachbo;

/**
 * Servlet implementation class sachController
 */
@WebServlet("/sachController")
public class sachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		//lay loaa va sach ve	
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		loaibo lbo = new loaibo(); 
		sachbo sbo = new sachbo();
		//lay loai ve
		request.setAttribute("dsloai", lbo.getloai());
		
		String ml = request.getParameter("ml");
		String key = request.getParameter("txttim");
		
		ArrayList<sachbean> ds = sbo.getsach();
		if(ml != null) // kich ben trai
			ds = sbo.TimMa(ml);
		else{
			if(key != null){
				ds = sbo.Tim(key);
			}
		}
		request.setAttribute("dssach", ds);
		// chuyen loai va sach ve trang menu.jsp
		RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
		rd.forward(request, response);
			
		
		}
		
		
		catch (Exception e) {
			e.printStackTrace();
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
