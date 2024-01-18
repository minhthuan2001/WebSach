package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.khachhangbean;
import bo.chitietHDbo;
import bo.giohangbo;
import bo.hoadonbo;

/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			khachhangbean kh = (khachhangbean)session.getAttribute("dn");
			if(kh == null) {
				RequestDispatcher rd = request.getRequestDispatcher("dangnhap.jsp");
				rd.forward(request, response);
			}else {
				hoadonbo hdbo = new hoadonbo();
				chitietHDbo cthdbo = new chitietHDbo();
				hdbo.Them(kh.getMakh());
				long maxhd = hdbo.MaxHd();
				giohangbo gh = (giohangbo)session.getAttribute("gh");
				if(gh != null) {
					for(giohangbean h:gh.ds) 
						cthdbo.Them(h.getMasach(), h.getSoluongmua(), maxhd);
					session.removeAttribute("gh");
					response.sendRedirect("sachController");
				} else {
					response.sendRedirect("htgioController");
				}
			}
		} catch (Exception e) {
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
