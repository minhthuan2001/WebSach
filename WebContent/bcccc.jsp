<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//kiem t ra xem tao bien session chua
if(session.getAttribute("ss")== null)
		session.setAttribute("ss", (int) 0);// tao bien session
String tamn=request.getParameter("txtn");
if(tamn!=null){
	int n = Integer.parseInt(tamn);
	//b1: gan session vao bien
	int s=(int)session.getAttribute("ss");
	//b2: Thay doi bien
	s=s+n;
	//b3: Gan bien vao session
	session.setAttribute("ss", s);
}
%>
<form action="bcccc.jsp" method="post">
		n = <input type="number" value="0" name="txtn">
			<input type="submit" value="Hien thi">
	</form>
	Tong : <%=session.getAttribute("ss") %>
</body>
</html>