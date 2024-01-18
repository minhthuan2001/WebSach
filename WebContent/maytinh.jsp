<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>May Tinh</title>
</head>
<body>
<%	
	// Truong hop 2 trang => Lay du lieu tu trang tinh.jsp
	//String a=request.getParameter("a");
	//String b=request.getParameter("b");
	//String kq=request.getParameter("kq");
	
	// Truong hop 1 trang
	int a = 0, b = 0, kq = 0;
	a = (int)request.getAttribute("a");
	b = (int)request.getAttribute("b");
	kq = (int)request.getAttribute("kq");
	
	
%>
	<form action="maytinhController" method="post">
		a =<input type="number" name="txta" value="<%=a%>"><br>
		b =<input type="number" name="txtb" value="<%=b%>"><br>
		kq =<input type="number" name="txtkq" value="<%=kq%>"><br>
		<input type="submit" name="butc" value=" + " class="btn-cong">
		<input type="submit" name="butt" value=" - " class="btn-tru">
		<input type="submit" name="butn" value=" * " class="btn-nhan">
		<input type="submit" name="butchia" value=" / " class="btn-chia">
	</form>
</body>
</html>