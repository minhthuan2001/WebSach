<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Bảng Tính Toán</title>
<style>

.btn-cong{ 
	background : red;
	border : none;
	witdh : 50px;
	height : 50px;
}
.btn-tru{
	background : yellow;
	border : none;
}
.btn-nhan{
	background : green;
	border : none;
}
.btn-chia{
	background : blue;
	border : none;
}
</style>
<body>
<%
int a= 0,b= 0,kq =0;
a=(int)request.getAttribute("a");
b=(int)request.getAttribute("b");
kq=(int)request.getAttribute("kq");
%>
<form action="BangtinhController" method ="post">
a= <input type="number" name="txta" value="<%=a%>"><br>
b= <input type="number" name="txtb" value="<%=b%>"><br>
kq= <input type="number" name="txtkq" value="<%=kq%>"><br>
<input type="submit" name="butc" value=" + " class = "btn-cong">
<input type="submit" name="butt" value=" - " class = "btn-tru">
<input type="submit" name="butn" value=" * " class = "btn-nhan">
<input type="submit" name="butchia" value=" / " class = "btn-chia">
</form>
</body>
</html>