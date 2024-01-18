<%@page import="bean.Adminxacnhanbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nhà Sách Minh Thuận</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<table class="table table-hover">
	<% ArrayList<Adminxacnhanbean> ds= (ArrayList<Adminxacnhanbean>) request.getAttribute("ds");
	for(Adminxacnhanbean xn:ds){
	%>
	<tr>
	<td><%=xn.getHoten() %></td>
	<td><%=xn.getGia() %></td>
	<td><%=xn.getSoLuongMua() %></td>
	<td><%=xn.getThanhtien() %></td>
	<td><a href="AdminXacNhanController?mct=<%=xn.getMaChiTietHD()%>"> Xác nhận </a></td> 
	</tr>
	<%}%>
</table>
</body>
</html>