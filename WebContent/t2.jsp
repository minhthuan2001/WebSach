<%@page import="dao.KetNoi"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% KetNoi kn = new KetNoi();
	kn.ketnoi();
%>
<%session.getAttribute("tam"); %>
	<b>sdbsfd</b>
</body>
</html>