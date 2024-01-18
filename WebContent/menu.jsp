<%@page import="bean.khachhangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.sachdao"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nhà Sách Minh Thuận</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
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
      <li><a href="#">Lịch sử mua hàng</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
	    <%khachhangbean dn=(khachhangbean)session.getAttribute("dn");
	    if(dn!=null){
	     %>
	      	<li><a href="#"> Xin chào: <%=dn.getHoten() %></a></li>
	      	<li><a href="dangxuat.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
	     <%} 
	    else{%>
	      	<li><a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
	      	<li><a href="Dangky1.jsp"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
	    <%} %>    
    </ul>
  </div>
</nav>
	<%
		
	%>
	<table class="table">
		<tr>
			<td valign="top" width="200">
				<table class="table table-hover">
					<%
					//lay ve dsloai
					ArrayList<loaibean> dsloai= (ArrayList<loaibean>) request.getAttribute("dsloai");
					for(loaibean l:dsloai){ 
					%>
						<tr>
							<td>
								<a href="sachController?ml=<%= l.getMaloai()%>">
									<%=l.getTenloai() %>
								</a>
							</td>
						</tr>
					<%} %>
				</table>
			</td>
			
			<td valign="top" width="1100">
				<table class="table table-hover">
					<%
					ArrayList<sachbean> ds = (ArrayList<sachbean>) request.getAttribute("dssach");
					int n = ds.size();
					for(int i = 0; i < n; i++){
						sachbean s = ds.get(i);
					%>						
						<tr>
							<td>
								<img src="<%= s.getAnh()%>"><br>
								<%= s.getTensach() %><br>
								<%= s.getGia() %><br>
								<a href = "dathangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach() %>
								&gia=<%=s.getGia()%>"> <img src="http://www.minhkhai.com.vn/store2/images/buynow.jpg"></a>
							</td>	
							
							<%i++; if(i < n){s=ds.get(i); %>
							<td>
								<img src="<%=s.getAnh()%>"><br>
								<%=s.getTensach() %><br>
								<%=s.getGia() %><br>
								<a href = "dathangController?ms=<%=s.getMasach()%>&ts=<%=s.getTensach() %>
								&gia=<%=s.getGia()%>">
								<img src="http://www.minhkhai.com.vn/store2/images/buynow.jpg">
								</a>
							</td>
							<%} %>	
						</tr>
					<%} %>
				
					
				</table>
			</td>
			<td>
				<form action="sachController" method="post" class="search" style="display: flex; align-items: center;">
					<input  width ='800' type="text" name="txttk" class="form-control">
					<div>
  					<button type="submit" name='th' value='Tìm' class="btn btn-primary">
   					<i class="fas fa-search"></i>
 				 	</button>
 				 	</div>	
				</form>
			</td>
		</tr>
	</table>
</body>
</html>