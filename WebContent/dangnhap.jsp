<%@page import="bean.khachhangbean"%>
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
      <li><a href="htgio.jsp">Giỏ hàng</a></li>
      <li><a href="#">Thanh toán</a></li>
      <li class="active"><a href="lichsumua.jsp">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <%khachhangbean dn=(khachhangbean)session.getAttribute("dn");
	    if(dn!=null){
	     %>
	      	<li><a href="#"> Xin chào: <%=dn.getHoten() %></a></li>
      <li><a href="dangxuat.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
      <%} else{%>
      <li><a href="dangnhapController"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
      <%} %>    
      <li><a href="Dangky1.jsp"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>


    </ul>
  </div>
</nav>
<%
	if (session.getAttribute("dn") == null) {
		session.setAttribute("dn", null);
	}
	String kt = (String) session.getAttribute("dn");
	%>
<%if (kt == null) {%>


<form action="dangnhapController" method="post">
<%if (request.getParameter("war") != null)
	out.print(request.getParameter("war"));
	%>
Username =<input type="text" name="txtun"><br>
Password=<input type="password" name="txtpass"> <br>
<input type='submit' name='th' value='Đăng Nhập'>
</form>
<%} %>



</body>
</html>