<%@page import="bean.lichsumuabean"%>
<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.khachhangbean"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Lịch sử mua hàng</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="style.css" rel="stylesheet">
<link href="https://minhkhai.com.vn/store2/images/minhkhai-logo.png" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">


.header-name-column-cart {
    height: 55px;
    width: 100%;
    margin-top: 12px;
    background-color: #fff;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .05);
    display: flex;
    align-items: center;
    font-size: 16px;
    color: #888;
    padding: 20px;
}

.header-name-column-cart input {
    margin-left: 20px;
    width: 25px;
    height: 17px;
    margin-right: 12px;
}

.product-cart {
    color: rgba(0, 0, 0, .8);
    width: 46.27949%;
    font-size: 18px;
}

.product-price {
    width: 15.88022%;
}

.header-name-column-cart .product-price span {
    margin-left: 60px;
}

.product-sum {
    width: 15.4265%;
    text-align: center;
}

.product-money {
    width: 10.43557%;
    text-align: center;
}

.header-name-column-cart .product-money span {
    margin-left: 20px;
}

.product-action {
    width: 12.70417%;
    text-align: center;
}

.product-action a{
	text-decoration: none;
	color: #333;
	font-size: 16px;
}

.container-name-brand .fa-comments{
	position: relative;
    top: 3px;
}

.container-name-brand {
    height: 60px;
    width: 100%;
    margin-top: 12px;
    background-color: #fff;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .05);
    display: flex;
    align-items: center;
    font-size: 16px;
    color: rgba(0, 0, 0, .8);
    padding: 20px;
}

.container-name-brand input {
    margin-left: 20px;
    width: 25px;
    height: 17px;
    margin-right: 12px;
}

.container-name-brand .fa-house {
    font-size: 18px;
    color: rgba(0, 0, 0, .8);
    margin-right: 10px;
}

.container-name-brand span {
    font-size: 18px;
    display: block;
    margin-right: 10px;
    position: relative;
    top: 2px;
}

.container-name-brand .fa-comments {
    color: #EE4D2D;
}

.product-cart img {
    width: 80px;
    height: 80px;
    margin-right: 10px;
}

.container-product-cart {
    margin-top: 10px;
    height: 136px;
    width: 100%;
    background-color: #fff;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .05);
    display: flex;
    align-items: center;
    font-size: 1.4rem;
    color: rgba(0, 0, 0, .8);
    padding: 20px;
}

.container-product-cart input {
    margin-left: 20px;
    width: 25px;
    height: 17px;
    margin-right: 12px;
}

.container-product-cart .product-cart {
    display: flex;
    font-size: 17px;
    align-items: center;
}

.product-price .price-old {
    text-decoration: line-through;
    color: #888;
    margin-right: 4px;
    font-size: 14px;
    margin-left: 25px;
}

.product-price .price-cur {
    color: rgba(0, 0, 0, .8);
    font-size: 16px;
}

.container-product-cart .product-sum {
    font-size: 14px;
    display: flex;
    align-items: center;
}

.container-product-cart .product-sum .btn_cart {
    height: 32px;
    outline: none;
}

.container-product-cart .product-sum .btn_cart-sub {
    width: 32px;
    height: 100%;
    background-color: transparent;
}

.container-product-cart .product-sum .btn_cart-plus {
    width: 32px;
    height: 100%;
    background-color: transparent;
}

.container-product-cart .product-sum .btn_cart-quantity {
    width: 52px;
    height: 100%;
    margin: 0 0 0 60px;
    text-align: center;
    background-color: transparent;
}

.container-product-cart .product-money span {
    margin-left: 16px;
    font-size: 17px;
    color: #EE4D2D;
}

.container-product-cart .product-action span:hover {
    cursor: pointer;
    color: #EE4D2D;
}

.container-name-ticket {
    height: 60px;
    width: 100%;
    background-color: #fff;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .05);
    display: flex;
    align-items: center;
    font-size: 16px;
    color: rgba(0, 0, 0, .8);
    padding: 20px;
    margin-top: 1px;
}

.container-name-ticket i {
    font-size: 18px;
    color: #EE4D2D;
    margin: 0 10px 0 24px;
}

.container-name-ticket {
    color: #3165AF;
    font-size: 16px;
    cursor: pointer;
}

.container-buy-cart {
    width: 100%;
    margin-top: 12px;
    background-color: #fff;
    box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .05);
    display: flex;
    align-items: center;
    flex-direction: column;
    font-size: 16px;
    color: rgba(0, 0, 0, .8);
    padding: 20px;
    position: relative;
}

.checkout-buy-cart {
    margin-top: 70px;
    display: flex;
    align-items: center;
    width: 100%;
    margin-bottom: 30px;
}

.checkout-left-cart {
    position: absolute;
    left: 20px;
    display: flex;
    align-items: center;
}

.checkout-left-cart a{
	color: #333;
	text-decoration: none;
}

.checkout-left-cart input{
    width: 18px;
    height: 18px;
    margin-right: 30px;
}

.checkout-left-cart span{
    font-size: 18px;
}

.checkout-left-cart span:hover{
	color: #EE4D2D;
}

.checkout-left-cart .remove-cart{
    margin-left: 50px;
}

.checkout-right-cart{
    display: flex;
    align-items: center;
    right: 20px;
    position: absolute;
}

.checkout-right-cart span{
    font-size: 18px;
}

.checkout-right-cart .price-checkout{
    font-size: 20px;
    color: #EE4D2D;
}

.btn-checkout{
    width: 210px;   
    margin-left: 10px;
}

.checkout-right-cart i{
    margin-left: 10px;
    position: relative;
    cursor: pointer;
}

.checkout-right-cart .price-text{
    font-size: 24px;
    margin-right: 10px;
}

.detail-checkout-container{
    position: absolute;
    width: 610px;
    background-color: #fff;
    box-shadow: 0 1px 12px 0 rgba(0, 0, 0, .12);
    right: 220px;
    padding: 30px;
    bottom: 38px;
    display: none;
}

.detail-checkout-heading{
    position: relative;
}

.detail-checkout-heading span{
    font-size: 18px;
    display: block;
    margin-bottom: 20px;
}

.detail-checkout-heading::after{
    position: absolute;
    content: "";
    display: block;
    right: 0;
    width: 100%;
    top: 40px;
    border-bottom: 1px solid rgba(0, 0, 0, .09);
}

.detail-sum-product{
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;
    padding: 10px 0;
}

.detail-sum-product::after{
    position: absolute;
    content: "";
    display: block;
    right: 0;
    width: 100%;
    top: 40px;
    border-bottom: 1px solid rgba(0, 0, 0, .09);
}

.detail-sum-product span{
    font-size: 16px;
}

.detail-sale-product{
    margin-top: 14px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;
}

.detail-sale-product span{
    font-size: 16px;
    display: block;
    position: relative;
    top: 4px;
}

.detail-sale-product::after{
    position: absolute;
    content: "";
    display: block;
    right: 0;
    width: 100%;
    top: 34px;
    border-bottom: 1px solid rgba(0, 0, 0, .09);
}

.detail-tk-product{
    margin-top: 30px;
}

.detail-tk-product{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-top: 2px;
}

.detail-tk-product span{
    font-size: 16px;
}

.detail-tk-product .tk{
    color: #EE4D2D;
}

.detail-sum-price-product{
    margin-top: 10px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.detail-sum-price-product span{
    font-size: 16px;
}

.btn{
    min-width: 124px;
    height: 34px;
    text-decoration: none;
    border: none;
    border-radius: 2px;
    font-size: 16px;
    padding: 0 12px;
    outline: none;
    cursor: pointer;
    color: var(--text-color);
    background-color: var(--white-color);
    display: inline-flex;
    justify-content: center;
    align-items: center;
    line-height: 1.6rem;
}

.btn.btn--primary{
    color: #fff;
    background-color: #EE4D2D;
}

</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="sachController">Trang chủ</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="mynavbar">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link"
						href="htgioController">Giỏ sách</a></li>
					<li class="nav-item"><a class="nav-link"
						href="xacnhanController">Thanh toán</a></li>
					<li class="nav-item"><a class="nav-link"
						href="lichsumuaController">Lịch sử mua</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">

					<%
					khachhangbean kh = (khachhangbean) session.getAttribute("login");
					if (kh == null) {
					%>
					<li class="nav-item">
						<a class="nav-link" href="dangkyController">
							<span class="glyphicon glyphicon-user"></span>
							Đăng ký
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="dangnhapController">
							<span class="glyphicon glyphicon-user"></span>
							Đăng nhập
						</a>
					</li>
					<%
					} else {
					%>
					<li class="nav-item"><a class="nav-link"> <span
							class="glyphicon glyphicon-log-in"></span>
							<button type="button"
								style="background-color: transparent; border: none; padding: 0; color: white">
								Xin chào:
								<%=kh.getHoten()%></button>
								
					</a></li>
					<li><a class="nav-link" href="dangxuatController"><span
							class="glyphicon glyphicon-log-in"></span> Đăng xuất</a></li>
					<%
					}
					%>

				</ul>
			</div>
		</div>
	</nav>
	<div class="main_cart">
            <div class="grid wide">
                <div class="wrapper">
                    <div class="cart__wrapper">                   
                        <div class="header-name-column-cart">
                            <input type="checkbox">
                            <div class="product-cart">
                                <span>Sản Phẩm</span>
                            </div>
                            <div class="product-price">
                                <span>Đơn Giá</span>
                            </div>
                            <div class="product-sum">
                                <span>Số Lượng</span>
                            </div>
                            <div class="product-money">
                                <span>Số Tiền</span>
                            </div>
                        </div>
						<%ArrayList<lichsumuabean> ls=(ArrayList<lichsumuabean>)request.getAttribute("dslsmua");
							for(lichsumuabean lsmua : ls){
						%>	
                        <form action="suaxoaController" method="post" class="cart-container">
                            <div class="container-name-brand">
                                <input type="checkbox">
                                <i class="fa-solid fa-house"></i>
                                <span>Nhà Sách Ntp</span>
                                <i class="fa-regular fa-comments"></i>
                          	</div>
                           
                            <div class="container-product-cart">
                                <input name="c1" value="<%=lsmua.getMasach() %>" class="checkbox" type="checkbox">
                                <div class="product-cart">
                                    <img src="<%=lsmua.getAnh() %>" alt="">
                                    <span><%=lsmua.getTensach() %></span>
                                </div>
                                <div class="product-price">
                                    <span class="price-old">₫499.000</span>
                                    <span class="price-cur">₫<%=lsmua.getGia() %></span>
                                </div>
                                <div class="product-sum">
                                	<span class="btn_cart btn_cart-quantity"><%=lsmua.getSoluongmua() %></span>                                 
                                </div>
                                <div class="product-money">
                                    <span>₫<%=lsmua.getThanhtien() %></span>
                                </div>                               
                            </div>
                        </form>
                        <%} %>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>