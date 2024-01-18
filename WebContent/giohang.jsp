<%@page import="bean.khachhangbean"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
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
<title>Nhà Sách</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<ul class="nav navbar-nav">
				<li class="active"><a href="sachController">Trang chủ</a></li>
				<li><a href="giohangController">Giỏ hàng</a></li>
				<li><a href="#">Thanh toán</a></li>
				<li><a href="#">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<%
				khachhangbean dn = (khachhangbean) session.getAttribute("dn");
				if (dn != null) {
				%>
				<li><a href="#"> Xin chào: <%=dn%></a></li>
				<li><a href="dangxuatController"><span
						class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
				<%
				} else {
				%>
				<li><a href="dangnhap.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
				<li><a href="dangky.jsp"><span
						class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</nav>
	<%
	loaibo lbo = new loaibo();
	sachbo sbo = new sachbo();
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	%>
	<table class="table">
		<tr>
			<td valign="top" width="200">
				<table class="table table-hover">
					<%
					for (loaibean l : lbo.getloai()) {
					%>
					<tr>
						<td><a href="sachController?ml=<%=l.getMaloai()%>"> <%=l.getTenloai()%>
						</a></td>
					</tr>
					<%
					}
					%>
				</table>
			</td>

			<td valign="top" width="1100">
				<form action="xoaController" method="post">
				<table class="table table-hover">
					<%
					giohangbo gh = (giohangbo) session.getAttribute("gh");
					if (gh != null) {
						for (giohangbean g : gh.ds) {
					%>
					<tr>
						<td><input type="checkbox" name="c1"
							value="<%=g.getMasach()%>"></td>
						<td><%=g.getMasach()%></td>
						<td><%=g.getTensach()%></td>
						<td><%=g.getGia()%></td>
						<td><%=g.getSoluongmua()%></td>
						<td><%=g.getThanhtien()%></td>
						<td><input type="number" name="<%=g.getMasach() %>" style="width: 50px;"> 
							<button type="submit" name="but1" value="<%=g.getMasach()%>">+</button><br></td>
						<td><a href="xoaController?ms=<%=g.getMasach()%>"> <i
								class="fa-solid fa-trash"></i>
						</a></td>
					</tr>
					<%
					}
					%>
					<tr>
					<input type='submit' name='xoachon' value='Xóa chọn'>
					</tr>
					<%
					}
					%>
				</table>
				</form>
				
				<form action="xacnhanController" method="post">
						<input type="submit" name='th' value='Xác nhận đặt'>
							
						</input>
					</div>

				</form>
			</td>
			<td>
				<form action="sachController" method="post" class="search"
					style="display: flex; align-items: center;">
					<input type="text" name="txttk" class="form-control"><br>
					<div>
						<button type="submit" name='th' value='Tìm'
							class="btn btn-primary">
							<i class="fas fa-search"></i>
						</button>
					</div>

				</form>
			</td>
		</tr>
	</table>
</body>
</html>