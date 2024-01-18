package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.khachhangdao;
import bo.dangkybo;

/**
 * Servlet implementation class dangkyController
 */
@WebServlet("/dangkyController")
public class dangkyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dangkyController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String un = request.getParameter("un");
			String pass = request.getParameter("pass");
			String name = request.getParameter("name");
			String addr = request.getParameter("address");
			String sodt = request.getParameter("phone");
			String email = request.getParameter("email");

			if (un == null && pass == null && name == null && addr == null && sodt == null && email == null) {
				RequestDispatcher rd = request.getRequestDispatcher("Dangky1.jsp");
				rd.forward(request, response);
			} else {
				pass = khachhangdao.ecrypt(pass);
				dangkybo dkbo = new dangkybo();
				Boolean n = dkbo.ktdk(un);
				if (n) {
					dkbo.Dangky(name, addr, sodt, email, un, pass);
					RequestDispatcher rd = request.getRequestDispatcher("Dangky1.jsp?war=đăng ký thành công!");
					rd.forward(request, response);
				} else {
					RequestDispatcher rd = request.getRequestDispatcher(
							"Dangky1.jsp?war=Tài khoản đã tồn tại hoặc chưa nhập đầy đủ thông tin");
					rd.forward(request, response);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
