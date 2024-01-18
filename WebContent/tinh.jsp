<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String tama=request.getParameter("txta"); 
	String tamb=request.getParameter("txtb"); 
	String butc=request.getParameter("butc"); 
	String butt=request.getParameter("butt"); 
	String butn=request.getParameter("butn"); 
	String butchia=request.getParameter("butchia"); 
	
	int a=0, b=0, kq=0;
	
	if(tama!=null && tamb!=null) {
		a = Integer.parseInt(tama);
		b = Integer.parseInt(tamb);
	}
	
	if(butc!=null) // Nguoi dung kick nut +
		kq=a+b;
	if(butt!=null) // Nguoi dung kick nut -
		kq=a-b;
	response.sendRedirect("Bangtinh.jsp?kq=" +kq+"&a="+a+"&b="+b);
%>

</body>
</html>