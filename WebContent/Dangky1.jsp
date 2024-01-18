<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="sachController">Trang chủ</a></li>
      <li><a href="htgioController">Giỏ hàng</a></li>
      <li><a href="#">Thanh toán</a></li>
      <li><a href="#">Lịch sử mua hàng</a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    	<%
    	// gan session vao bien
    	String dn = (String)session.getAttribute("dn");
    	if(dn!=null){ %>
    	
      <li><a href="#"> Xin chào: <%=dn %></a></li>
      
      <li><a href="dangxuatController"><span class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
      <%} else{%>
      <li><a href="dangnhapController"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
      <%} %>    
      <li><a href="dangkyController"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
    </ul>
  </div>
</nav>


	<div class="container">
		<form style="width: 350px;" action="dangkyController" method="post">
			<div>
				<label class="form-label" for="a">Use name</label> <input
					class="form-control" type="text" name="un" id="a">
			</div>
			<div>
				<label class="form-label" for="b">Password</label> <input
					class="form-control" type="password" name="pass" id="b">
			</div>
			<div>
				<label class="form-label" for="c">Họ và tên</label> <input
					class="form-control" type="text" name="name" id="c">
			</div>
			<div>
				<label class="form-label" for="d">Địa chỉ</label> <input
					class="form-control" type="text" name="address" id="d">
			</div>
			<div>
				<label class="form-label" for="e">Số điện thoại</label> <input
					class="form-control" type="text" name="phone" id="e">
			</div>
			<div>
				<label class="form-label" for="f">Email</label> <input
					class="form-control" type="email" name="email" id="f">
			</div>
			<input class="btn btn-primary w-100 mt-3" type="submit" name ="submit" value ="Đăng ký">
		</form>
		<h4>
			<%
			if (request.getParameter("war") != null)
				out.print(request.getParameter("war"));
			%>
		</h4>
	</div>

	<%
	if (session.getAttribute("dn") == null) {
	%>

	<div class="container">

		<!-- Modal -->



		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header px-3">

						<h4 class="modal-title">Login</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body px-3">
						<%
						String un = request.getParameter("txtun");
						String pass = request.getParameter("txtpass");
						//Nếu k phải chạy lần đầu if(un!= null && pass != null)

						if (un != null && pass != null)
							if (un.equals("abc") && pass.equals("123")) {
								session.setAttribute("dn", un);
								session.setAttribute("pass", pass);
								response.sendRedirect("sachController");
							}
						%>

						<form action="loginController" method="post">

							<div class="mb-3">
								<label class="form-label" for="a">Use name:</label> <input
									class="form-control" type="text" name="un" id="a">
							</div>
							<div class="mb-3">
								<label class="form-label" for="b">Password:</label> <input
									class="form-control" type="password" name="pass" id="b">
							</div>
							<input class="btn btn-primary w-100" type="submit" name="submit">
						</form>

						<%
						String tb = request.getParameter("tb");
						if (tb != null)
							out.print("<b>Đăng nhập sai</b>");
						%>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	</div>
	<%
	}
	%>


</body>
</html>