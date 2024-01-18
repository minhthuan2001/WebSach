<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="shortcut icon" href="https://tailieu.vn/static/b2013az/templates/version1/default/images/72x72.png" type="image/x-icon">
    <title>TaiLieuVN: Thư viện chia sẻ Tài liệu</title>
    <style type="text/css">
    * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
    font-size: 11px;
    line-height: 20px;
    color: #444;
    font-family: Arial, Helvetica, sans-serif;
}

.main {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.4);
    display: flex;
    align-items: center;
    justify-content: center;
}

.wrapper {
    max-width: 784px;
    background-color: #fff;
}

.header {
    background-color: #1A83D2;
    width: 100%;
    height: 42px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 10px;
}

.title {
    font-size: 13px;
    text-transform: uppercase;
    color: #fff;
}

.close-icon {
    color: #fff;
    font-size: 16px;
    cursor: pointer;
}

.container {
    padding: 15px;
}

.heading {
    display: flex;
    align-items: center;
    padding-bottom: 4px;
}

.dot-icon {
    font-size: 4px;
    padding-right: 4px;
}

.btn-register {
    display: flex;
    justify-content: space-between;
}

.fb-register {
    width: 276px;
    height: 44px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: #3C5A9A;
    color: #fff;
    border: none;
    outline: none;
    border-radius: 2px;
    margin-left: 8px;
    cursor: pointer;
}

.fb-icon {
    font-size: 22px;
    margin-right: 16px;
}

.fb-register span {
    font-size: 15px;
    font-weight: 500;
}

.register-point {
    border: 1px dashed #4ECBEF;
    padding: 4px 8px 4px 2px;
    border-radius: 4px;
    position: relative;
    background-color: #f5fbff;
}

.register-point li {
    margin-left: 15px;
}

.register-point li span {
    color: red;
}

.right-icon {
    color: #178CB7;
    font-size: 9px;
    cursor: pointer;
}

.left-icon {
    position: absolute;
    left: -6px;
    top: 27px;
    font-size: 8px;
    color: #4ECBEF;
}

.register-action {
    color: #0080AF;
    font-weight: 600;
    margin-left: 8px;
    cursor: pointer;
}

.register-title {
    padding-bottom: 6px;
}

.form-register {
    display: flex;
}

.form-register-left {
    display: flex;
    flex-direction: column;
}

.form-register-right {
    display: flex;
    flex-direction: column;
}

input {
    width: 302px;
    height: 27px;
    margin: 5px 10px 5px 0;
    padding-left: 3px;
    border: 1px solid #444;
}

input::placeholder {
    font-size: 11px;
}

select {
    height: 27px;
    width: 76px;
    margin-top: 5px;
    margin-right: 3px;
    font-size: 11px;
    color: #444;
    padding: 3px;
}

.select-birthday {
    margin-top: 5px;
}

.select-city {
    margin-top: 10px;
}

.codeEnter {
    margin-top: 5px;
    display: flex;
}

.codeEnter img {
    margin-top: 5px;
    width: 93px;
    height: 44px;
}

.input-code {
    max-width: 130px;
}

.link {
    text-decoration: none;
    color: #1A83D2;
}

.policy {
    display: flex;
    align-items: center;
    border-bottom: 1px dashed #ccc;
}

.btn-register-sm {
    background: url('https://tailieu.vn/static/b2013az/templates/version1/default/images/icons/btncenter1x33.gif') repeat-x scroll 0 0;
    display: inline-block;
    height: 30px;
    width: 70px;
    text-align: center;
    font-weight: bold;
    color: #FFF;
    cursor: pointer;
    border: none;
    outline: none;
    border-radius: 5px;
    font-size: 11px;
}

.check {
    width: 12px;
    margin-left: 1px;
}

.login {
    color: #0080AF;
    font-weight: 600;
    margin-left: 8px;
    cursor: pointer;
}

.footer {
    padding: 0 15px 10px 15px;
}

.container-footer {
    background-color: #f5f5f5;
    width: 752px;
    display: flex;
    align-items: center;
    justify-content: space-around;
}

.footer-left {
    position: relative;
}

.footer-left::after {
    position: absolute;
    content: "";
    width: 1px;
    height: 42px;
    right: -24px;
    top: 0;
    background: #ddd;
}

.footer-left span {
    color: #3B5998;
}

.footer-mid {
    position: relative;
}

.footer-mid::after {
    position: absolute;
    content: "";
    width: 1px;
    height: 42px;
    right: -24px;
    top: 0;
    background: #ddd;
}

.footer-mid span {
    color: #3B5998;
}

.footer-mid a {
    text-decoration: none;
    color: #0C86B3;
}

.footer-right a{
    text-decoration: none;
    color: #0080AF;
    font-weight: 600;
}

.footer-right span {
    color: red;
}
    
    </style>
</head>

<body>
    <div class="main">
        <div class="wrapper">
            <header class="header">
                <h3 class="title">Đăng ký</h3>
                <i class="close-icon fa-solid fa-xmark"></i>
            </header>
            <div class="container">
                <p class="heading">
                    <i class="dot-icon fa-solid fa-circle"></i>
                    Đăng ký nhanh qua Facebook
                </p>
                <div class="btn-register">
                    <button class="fb-register">
                        <i class="fb-icon fa-brands fa-square-facebook"></i>
                        <span>Login with Facebook</span>
                    </button>
                    <ul class="register-point">
                        <li>Thưởng ngay <span>50</span> ePoints khi đăng ký mới & <span>5</span> ePoints<br> cho mỗi
                            lượt chia sẻ Facebook</li>
                        <li>Tích lũy nhiều ePoints khi Upload tài liệu
                            <i class="right-icon fa-solid fa-angles-right"></i>
                        </li>
                        <i class="left-icon fa-solid fa-caret-left"></i>
                    </ul>
                </div>
                <span class="register-action">Đăng ký mới bằng tài khoản TaiLieu.VN</span>
                <div class="wrapper-sub">
                    <p class="register-title">Bạn cần kích hoạt tài khoản qua Email sau khi đăng ký để nhận ngay 50 ePoints thưởng từ TaiLieu.VN</p>
                    <form action="" class="form-register">
                        <div class="form-register-left">
                            <input type="text" placeholder="Nhập username">
                            <input type="password" placeholder="Nhập mật khẩu">
                            <input type="password" placeholder="Nhập lại mật khẩu">
                            <input type="email" placeholder="Nhập địa chỉ email">
                            <input type="email" placeholder="Nhập lại địa chỉ email">
                        </div>
                        <div class="form-register-right">
                            <input type="text" placeholder="Nhập Họ và tên" class="input-fullname">
                            <select name="" id="" class="select-sex">
                                <option value>Giới tính</option>
                                <option value="1">Nam</option>
                                <option value="0">Nữ</option>
                            </select>
                            <div class="select-birthday">
                                <select name="" id="" class="select-day">
                                    <option value>Ngày sinh</option>
                                    <option value="1">1</option>
                                    <option value="1">2</option>
                                    <option value="1">3</option>
                                    <option value="1">4</option>
                                    <option value="1">5</option>
                                </select>
                                <select name="" id="" class="select-month">
                                    <option value>Tháng</option>
                                    <option value="1">1</option>
                                    <option value="1">2</option>
                                    <option value="1">3</option>
                                    <option value="1">4</option>
                                    <option value="1">5</option>
                                </select>
                                <select name="" id="" class="select-year">
                                    <option value>Năm</option>
                                    <option value="1">1</option>
                                    <option value="1">2</option>
                                    <option value="1">3</option>
                                    <option value="1">4</option>
                                    <option value="1">5</option>
                                </select>
                            </div>
                            <select name="" id="" class="select-city">
                                <option value>Tỉnh/TP</option>
                                <option value="4">Hà Nội</option>
                                <option value="75">TT-Huế</option>
                                <option value="43">Đà Nẵng</option>
                            </select>
                            <div class="codeEnter">
                                <input type="text" placeholder="Nhập mã xác nhận" class="input-code">
                                <img src="./assets/image/qr.png" alt="">
                                <a href="" class="link">Chọn mã xác nhận khác</a>
                            </div>
                        </div>
                    </form>
                    <div class="policy">
                        <button class="btn-register-sm">Đăng ký</button>
                        <input type="checkbox" class="check">
                        <p class="accept">Tôi đồng ý với các Chính Sách và Thỏa Thuận Sử Dụng của TaiLieu.VN</p>
                    </div>
                </div>
                <p class="login">Bạn đã có tài khoản TaiLieu.VN? Đăng nhập</p>
            </div>
            <footer class="footer">
                <div class="container-footer">
                    <div class="footer-left">
                        <p>Thưởng <span>50</span> ePoints khi đăng ký mới</p>
                        <p>Tặng <span>5</span> ePoints cho mỗi lượt chia sẻ Facebook</p>
                    </div>
                    <div class="footer-mid">
                        <p>Xem và Tải trên <span>1 Triệu</span> Tài Liệu miễn phí</p>
                        <p>Kết nối <span>5 Triệu</span> Thành Viên <a href="https://tailieu.vn">TaiLieu.VN</a></p>
                    </div>
                    <div class="footer-right">
                        <p>Kết bạn với <a href="https://tailieu.vn">TaiLieu.VN</a> trên <a
                                href="https://tailieu.vn">Facebook</a> <br> để nhận link download miễn phí
                            <span>100</span> tài <br> liệu <span>HOT</span> mỗi ngày</p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</body>

</html>