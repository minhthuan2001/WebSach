<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Gia tri cua session: <%= session.getAttribute("tam") %>
	<hr>
	Gia tri cua cac bien request: <br>
	a = <%=request.getAttribute("a") %>
	<%String[] ds = (String[])request.getAttribute("ds"); 
		for(String pt:ds)
			out.print(pt);
	%>
	
</body>
</html>