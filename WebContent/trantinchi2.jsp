0<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://student.husc.edu.vn/Themes/Login/images/Logo-ko-nen.png">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />">
    <title>Đăng nhập hệ thống</title>
    <style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}


body {
    background: url('https://student.husc.edu.vn/Themes/Login/images/Login_bg_lg.png') repeat-x;
    background-color: #006EB7;
    height: 1200px;
    overflow: hidden;
    font-family: Arial, Helvetica, sans-serif;
}

.container {
    display: flex;
    width: 1000px;
    margin-left: auto;
    margin-right: auto;
}

.left {
    display: flex;
    flex-direction: column;
    width: 650px;
    align-items: center;
    margin-top: 50px;
}

.logo {
    width: 112px;
    height: 112px
}

.image {
    margin-top: 70px;
    width: 432px;
    height: 299px;
    object-position: center;
    object-fit: contain;
}

.right {
    flex: 1;
}

.container-right {
    width: 320px;
    border: 5px solid #6bb9f0;
    background: #f7f7f7;
    padding: 15px;
    height: 370px;
    margin: 0 auto;
    margin-top: 205px;
    position: relative;
    justify-content: center;
}

.logo-small {
    position: absolute;
    border: 5px solid #fff;
    border-radius: 50%;
    top: -30px;
    right: 20px;
}

.title {
    font-family: 'Calibri';
    font-size: 25px;
    font-weight: bold;
    color: #006eb7;
    margin: 20px 0;
    text-transform: uppercase;
}

.form {
    display: flex;
    flex-direction: column;
    padding-bottom: 10px;
}

.label {
    max-width: 100%;
    margin-bottom: 6px;
    font-weight: bold;
    font-size: 12px;
    color: #333;
}

.input {
    height: 38px;
    padding: 8px 12px;
    font-size: 15px;
    line-height: 1.3333333;
    border-radius: 4px;
    border: 1px solid #ccc;
    outline: none;
    color: #333;
}

.input::placeholder {
    color: #999;
}

.input:focus {
    border-color: #7DB6E2;
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}

.btn {
    line-height: 1.3333333;
    border-radius: 4px;
    width: 100%;
    padding: 8px 12px;
    color: #fff;
    background-color: #337AB7;
    outline: none;
    border: none;
    margin: 10px 0;
    font-size: 15px;
}

.btn:hover {
    background-color: #286090;
    border-color: #204d74;
    cursor: pointer;
}

.footer {
    padding-top: 90px;
}

.footer-name {
    text-align: center;
    display: block;
    font-size: 12px;
    color: #fff;
    text-decoration: none;
    margin-top: 20px;
}

.footer-name:hover {
    text-decoration: underline;
    cursor: pointer;
} 
    </style>
</head>

<body>
    <div class="main">
        <div class="container">
            <div class="left">
                <a href="https://ums.husc.edu.vn/" class="left-logo">
                    <img src="https://student.husc.edu.vn/Themes/Login/images/Logo-ko-nen.png" alt="Logo Husc" class="logo">
                </a>
                <img src="https://student.husc.edu.vn/Themes/Login/images/image1.png" alt="image" class="image">
            </div>
            <div class="right">
                <form class="container-right">
                    <img src="https://student.husc.edu.vn/Themes/Login/images/logo-small.png" alt="logo small" class="logo-small">
                    <h3 class="title">Sinh viên</h3>
                    <div class="form">
                        <label for="" class="label">Mã sinh viên:</label>
                        <input type="text" placeholder="Mã sinh viên" class="input">
                    </div>
                    <div class="form">
                        <label for="" class="label">Mật khẩu:</label>
                        <input type="password" placeholder="Mật khẩu" class="input">
                    </div>
                    <button class="btn">Đăng nhập</button>
                </form>
            </div>
        </div>
        <div class="footer">
            <a href="http://husc.edu.vn/" class="footer-name">Trường Đại học Khoa học, Đại học Huế</a>
            <span>77 Nguyễn Huệ, Thành phố Huế, Tỉnh Thừa Thiên Huế, Việt Nam</span>
        </div>
    </div>
</body>

</html>