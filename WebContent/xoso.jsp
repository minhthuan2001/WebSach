<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="https://doivetrung.vn/wp-content/uploads/2022/08/vecao.png">
<title>Xổ số</title>

<style type="text/css">
	body{
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	height: 100vh;
    	background-color: #000;
    	margin: auto;
	}
	
	.container{
    	width: 600px;
    	height: 400px;
		background-color: #FFF;
		box-shadow: inset 5px 5px 12px #ffffff, 2px 3px 10px #ecf0f3;
		padding: 15px;
		border-radius: 4px;
	}
	
	.date{
		color: #FF0000;
		font-size: 18px;
		float: right;
		font-weight: 500;
		position: relative;
    	top: -76px;
		right: 0;
	}
	
	h3 {
		text-align: center;
		position: relative;
    	top: 30px;
    	font-size: 24px;
    	text-transform: uppercase;
    	color: #FF0000;
    	letter-spacing: 2px;
    	animation: heading 5s infinite;
	}
	
	@keyframes heading {
	    0% {
	        color: red;
	    }
	
	    33% {
	        color: green;
	    }
	
	    100% {
	        color: blue;
	    }
	}
	
	.form {
		margin-top: 70px;
    	display: flex;
    	align-items: center;
    	justify-content: space-between;
	}
	
	select{
		width: 90px;
	    height: 25px;
	    font-weight: 500;
	    border: 1px solid;
	    margin-right: 20px;
	}
	
	input{
		width: 100px;
		height: 30px;
	    border: none;
	    outline: none;
	    font-size: 14px;
	    border-radius: 2px;
	    background: #000;
	    color: #fff;
	    text-transform: uppercase;
	    font-weight: 600;
	}
	
	input:hover{
		background: #ccc;
		color: #000;
		cursor: pointer;
	}
	
	span{
		display: flex;
    	justify-content: space-between;
    	font-size: 20px;
    	margin: 80px 0 20px 46px;
	}
	
	.random{
	    height: 100px;
	    width: 100px;
	    background: red;
	    border-radius: 50%;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    font-size: 30px;
	    color: #fff;
	    margin-top: -30px;
	    margin-right: 50px;
	}
	
	.copyright{
		text-align: center;
    	position: relative;
   	 	bottom: -196px;
    	right: 390px;
	}
</style>
</head>
<body>
	<div class="container">
	<h3>Kết quả xổ số</h2>
		<%
			Calendar c = Calendar.getInstance(); // Lay ngay gio he thong
			int thu = c.get(Calendar.DAY_OF_WEEK);
			int ngay = c.get(Calendar.DAY_OF_MONTH); // Lay ngay
			int thang = c.get(Calendar.MONTH) + 1; // Lay thang
			int nam = c.get(Calendar.YEAR); // Lay nam
		%>

	<div class="date">
		Thứ <%=thu %>, ngày <%=ngay%>, tháng <%=thang%>, năm <%=nam%>
	</div>
	
	<%
		String day = request.getParameter("sngay");
		String month = request.getParameter("sthang");
		String year = request.getParameter("snam");
	%>

	<form action="xoso.jsp" method="post" class="form">
		Ngày: 
		
		<select name="sngay">
			<option selected><%=ngay %></option>
			
			<% for(int i = 1; i <= 31; i++){%>
				<option <%=((i==ngay) ? "selected" : "") %>> 
					<%=i %>
				</option> 
			<%} %>
		
		</select> 
		
		Tháng: 
		<select name="sthang">
			<option selected><%=thang %></option>
			
			<%for(int i = 1; i <= 12; i++){ %>
				<option <%= ((i == thang) ? "selected" : "") %>>
					<%=i %>
				</option>
			<%} %>
			
		</select> 
		
		Năm: 
		<select name="snam">
			<option selected><%=nam %></option>
			
				<%for(int i = 2023; i >= 2014; i--){ %>
					<option <%= ((i == nam) ? "selected" : "") %>>
						<%=i %>
					</option>
				<%} %>
				
		</select> 
		
		<input type="Submit" value="kết quả"></input>
	</form>

	<span>
		Kết quả xổ số: ngày <%=day %>,  tháng <%=month %>,  năm <%=year %>
		<%
			Random r = new Random();
		%>
			<p class="random"><%= r.nextInt(100)%></p>
	</span>
	
	</div>
	<p class="copyright">&#169; Nguyễn Tâm Phước</p>
	
	
</body>
</html>