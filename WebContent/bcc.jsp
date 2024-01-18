<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bảng Cửu Chương</title>
<link rel="icon" href="https://lh3.googleusercontent.com/tRQhgU3YKo2f7gfYlFRC7LjF3hljvIJhsa3xQEicxkZ96cyqGO6MJ7DQERaC2A4TmA=w300">
<style type="text/css">

	body{
    	display: flex;
    	justify-content: center;
    	align-items: center;
    	height: 100vh;
    	background-color: #000;
    	margin: auto;
    	color: #333;
	}
	
	.container{
    	width: 600px;
    	height: 400px;
		padding: 15px;
		border-radius: 4px;
		background-color: #ECF0F3;
		box-shadow: inset 5px 5px 12px #ffffff, 2px 3px 10px #ecf0f3;
	}
	
	h3 {
		text-align: center;
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
	
	.wrapper{
		display: flex;
    	align-items: center;
    	padding: 10px;
    	
	}
	
	.form{
		position: relative;
	}
	
	.text{
		font-size: 18px;
		margin-right: 20px;
		color: #FF5818;
	}
	
	.input{
		height: 10px;
	    width: 200px;
	    background-color: #ecf0f3;
	    box-shadow: inset -5px -5px 12px #ffffff, inset 5px 5px 12px rgba(0, 0, 0, .16);
	    border: none;
	    outline: none;
	    border-radius: 30px;
	    color: rgb(70, 70, 70);
	    font-size: 20px;
	    font-weight: 700;
	    text-align: end;
	    padding: 20px;
	}
	
	.submit{
		margin-left: 65px;
	    border: none;
	    outline: none;
	    width: 80px;
	    background-color: #000;
	    color: #fff;
	    height: 37px;
	    border-radius: 6px;
	    font-size: 15px;
	    font-weight: 600;
	    cursor: pointer;
	}
	
	.content{
	    width: 80%;
	    height: 200px;
	    margin: 30px auto 10px;
	    background-color: #ecf0f3;
	    box-shadow: inset -5px -5px 12px #ffffff, inset 5px 5px 12px rgba(0, 0, 0, .16);
	    border-radius: 10px;
	}
	
	.sub-content{
		padding: 10px;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    color: #FF5818;
    	letter-spacing: 4px;
	}
	
	.copyright{
		text-align: center;
    	position: absolute;
    	bottom: 100px;
    	margin-left: 234px;
	}
</style>

</head>

<body>
	<%
		String tamN = request.getParameter("txtN");
		String tamKq = request.getParameter("txtkq");
		String btn = request.getParameter("btnShow");
	
		int n = 0, kq = 0;
	
		if (tamN != null) {
			n = Integer.parseInt(tamN);
			kq = Integer.parseInt(tamKq);
		}
	
		if (btn != null) {
			kq = n;
		}
	%>

	<div class="container">
		<h3>Bảng cửu chương</h3>
		<form action="bcc.jsp" method="get" class="form">
			<div class="wrapper">
				<span class="text">Nhập bảng cửu chương: </span>
				<input type="number" name="txtN" value="<%=n%>" class="input"><br>
				
				<input type="number" name="txtkq" value="<%=kq%>" style="display: none">
				
				<input type="submit" name="btnShow" value="Kết quả" class="submit"><br>
			
			</div>
			<div class="content">
				<div class="sub-content">
					<%for(int i = 1; i <= 10; i++){ %>
						<%if(kq == 1){  %>
							1 x <%=i%> = <%=1 * i%><br>
						<%} %>
						
						<%if(kq == 2){  %>
							2 x <%=i%> = <%=2 * i%><br>
						<%} %>
						
						<%if(kq == 3){  %>
							3 x <%=i%> = <%=3 * i%><br>
						<%} %>
						
						<%if(kq == 4){  %>
							4 x <%=i%> = <%=4 * i%><br>
						<%} %>
						
						<%if(kq == 5){  %>
							5 x <%=i%> = <%=5 * i%><br>
						<%} %>
						
						<%if(kq == 6){  %>
							6 x <%=i%> = <%=6 * i%><br>
						<%} %>
						
						<%if(kq == 7){  %>
							7 x <%=i%> = <%=7 * i%><br>
						<%} %>
						
						<%if(kq == 8){  %>
							8 x <%=i%> = <%=8 * i%><br>
						<%} %>
						
						<%if(kq == 9){  %>
							9 x <%=i%> = <%=9 * i%><br>
						<%} %>
						
						<%if(kq == 10){  %>
							10 x <%=i%> = <%=10 * i%><br>
						<%} %>
					<%} %>
				
				</div>
			</div>
		</form>
		<p class="copyright">&#169; DoanMinhThuan</p>
	</div>
</body>
</html>