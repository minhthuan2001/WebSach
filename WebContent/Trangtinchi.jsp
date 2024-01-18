<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đăng nhập hệ thống</title>
    <link href="/Themes/Login/bootstrap.min.css" rel="stylesheet" />
    <link href="/Themes/Login/bootstrap-customize.css" rel="stylesheet" />
    <link href="/Themes/Login/style.css?v=1.0" rel="stylesheet" />
  <style type="text/css">
  .hitec-signin {
    display: flex;
    width: 1000px;
    margin: auto;
    overflow: hidden;
}
.hitec-col-image {
    width: 650px;
}
body {
    font-family: Arial,sans-serif;
    font-size: 12px;
    line-height: 1.42857143;
    color: #333;
    background-color: #f4f4f4;
{
    margin: 0;
}
    background: url(images/Login_bg_lg.png) repeat-x;
    background-color: #006EB7;
    height: 100vh;
    overflow: hidden;
}
.hitec-form-signin {
    width: 320px;
    border: 5px solid #6bb9f0;
    background: #f7f7f7;
    padding: 15px;
    height: 370px;
    margin: 0 auto;
    margin-top: 205px;
    position: relative;
}
footer {
    padding-top: 50px;
    color: #fff;
}
.row {
    margin-left: -10px;
    margin-right: -10px;
}
.col-xs-12 {
    width: 100%;
}
.hitec-signin-logo img {
    width: 112px;
    height: 112px;
}
.hitec-form-signin img {
    border: 5px solid #fff;
    border-radius: 50%;
    position: absolute;
    top: -30px;
    right: 20px;
}
a {
    color: #337ab7;
    text-decoration: none;
}

}.hitec-signin-logo {
    margin-top: 50px;
}
img {
    vertical-align: middle;
}
.hitec-signin-image {
    margin-top: 70px;
}
.hitec-col-image {
    width: 650px;
}
input, button, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
.hitec-form-signin img {
    border: 5px solid #fff;
    border-radius: 50%;
    position: absolute;
    top: -30px;
    right: 20px;
}
.form-signin-heading {
    font-family: Calibri;
    font-size: 25px;
    font-weight: bold;
    color: #006eb7;
    margin-bottom: 20px;
}
.form-group {
    margin-bottom: 10px;
}
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: bold;
}
.input-lg {
    height: 38px;
    padding: 8px 12px;
    font-size: 15px;
    line-height: 1.3333333;
    border-radius: 4px;
}
.form-group {
    margin-bottom: 10px;
}
.input-lg {
    height: 38px;
    padding: 8px
px
 12px;
    font-size: 15px;
    line-height: 1.3333333;
    border-radius: 4px;
}
.hitec-form-signin .btn-custom {
    margin: 20px auto;
}
.hitec-col-signin {
    width: 350px
px
;
}
.hitec-signin {
    display: flex;
    width: 1000px;
    margin: auto;
    overflow: hidden;
}
.row {
    margin-left: -10px;
    margin-right: -10px;
}
.col-xs-12 {
    width: 100%;
}

  </style>
</head>
<body>
    <div class="hitec-signin">                
            <div class="hitec-col-image text-center">
                <div class="hitec-signin-logo">
                    <a href="https://ums.husc.edu.vn"><img src="https://student.husc.edu.vn/Themes/Login/images/Logo-ko-nen.png" alt=""></a>
                </div>
                <div class="hitec-signin-image">
                    <img src="https://student.husc.edu.vn/Themes/Login/images/image1.png" alt="">
                </div>
            </div>
            <div class="hitec-col-signin">
                <form action="/Account/Login" method="post" class="hitec-form-signin">
                    <input name="__RequestVerificationToken" type="hidden" value="FjGGX9CKryulrn1Nz3YgzRfccEPhve7o10CLxaiabXLaN9a-S_p7BNmKiLQGVnvrAoVc4odP1WwBfeFr2IqAdVV4Deo1" />
                    <img src="https://student.husc.edu.vn/Themes/Login/images/logo-small.png" alt="">
                    <h2 class="form-signin-heading">SINH VIÊN</h2>
                    <div class="form-group">
                        <label for="loginID">Mã sinh viên:</label>
                        <input type="text" id="loginID" name="loginID" class="form-control input-lg" placeholder="Mã sinh viên" required autofocus value="" />
                    </div>
                    <div class="form-group">
                        <label for="password">Mật khẩu:</label>
                        <input type="password" id="password" name="password" class="form-control input-lg" placeholder="Mật khẩu" required value="" />
                    </div>
                    <div class="form-group">
                        <span class="text-danger"></span>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block btn-custom" type="submit">Đăng nhập</button>
                </form>
            </div>        
    </div>    
    <footer>
        <div class="row">
            <div class="col-xs-12 text-center nopadding">
                <p><a href="http://husc.edu.vn" style="color:#fff" target="_blank">Trường Đại học Khoa học, Đại học Huế</a></p>
                <p><span class="glyphicon glyphicon-home"></span> 77 Nguyễn Huệ, Thành phố Huế, Tỉnh Thừa Thiên Huế, Việt Nam</p>
                <p><span class="glyphicon glyphicon-phone"></span> Điện thoại: (+84) 0234.3823290 – Fax: (+84) 0234.3824901</p>                
            </div>
        </div>
    </footer>
    <script src="/Scripts/jquery-1.10.2.min.js"></script>
    <script src="/Scripts/bootstrap.min.js"></script>
</body>
</html>