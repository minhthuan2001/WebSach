package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class dathangController
 */
@WebServlet("/dathangController")
public class dathangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dathangController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ms = request.getParameter("ms");
		String ts = request.getParameter("ts");
		String giatam= request.getParameter("gia");
		HttpSession session = request.getSession(); 
		if(ms!=null&&ts!=null&giatam!=null){//Dua hang vao gio hangf
			giohangbo gh =null;
			if(session.getAttribute("gh")==null){// mua lan dau
				gh= new giohangbo();
				session.setAttribute("gh", gh);
			}
			gh=(giohangbo)session.getAttribute("gh");
			gh.Them(ms, ts, Long.parseLong(giatam), (long)1);
			session.setAttribute("gh", gh);
			response.sendRedirect("htgioController");
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
