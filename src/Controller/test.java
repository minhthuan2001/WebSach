package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public test() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Tao ra doi tuong out
		PrintWriter out = response.getWriter();
		out.print("<html><body>Alo</body></html>");
		// Tao ra doi tuong session
		HttpSession session = request.getSession();
		session.setAttribute("tam", "Xin chao session");
		
		
		
		request.setAttribute("a", (long)10);
		String[] ds = {"Hung", "Nga", "Lan", "Thu"};
		request.setAttribute("ds", ds);
		// Chuyen tiep doi tuong request va response
		// ve trang abc.jsp
		RequestDispatcher rd = request.getRequestDispatcher("abc.jsp");
		rd.forward(request, response);
		//response.sendRedirect("t2.jsp");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
