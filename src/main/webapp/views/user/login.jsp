<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/taglib.jsp" %>
 <!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <%@ include file="/common/head_login.jsp" %>
         
    <title>Login & Registration Form</title>
</head>
<body>
    
    <div class="container">
        <div class="forms">
            <div class="form login">
                <span class="title">Đăng nhập</span>

                <form action="login" id="login-form" method="post">
                    <div class="input-field">
                        <input type="text" name="username" placeholder="Tên đăng nhập" required>
                        <i class="uil uil-user icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" name="password" class="password" placeholder="Mật khẩu" required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="logCheck">
                            <label for="logCheck" class="text">Lưu mật khẩu</label>
                        </div>
                        
                        <a href="#" class="text">Quên mật khẩu?</a>
                    </div>

                    <div class="input-field button">
                        <button type="submit"><input type="button" value="Login"></button>
                    </div>
                </form>

                <div class="login-signup">
                    <span class="text">Chưa có tài khoản?
                        <a href="#" class="text signup-link">Đăng ký ngay</a>
                    </span>
                </div>
            </div>

            <!-- Registration Form -->
            <div class="form signup">
                <span class="title">Đăng ký</span>

                <form action="register" id="register-form" method="post">
                    <div class="input-field">
                        <input type="text" name="username" placeholder="Tên của bạn" required>
                        <i class="uil uil-user-md"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" name="password" class="password" placeholder="Tạo mật khẩu" required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" name="cfmPass" class="password" placeholder="Xác nhận mật khẩu" required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>
					<div class="input-field">
                        <input type="email" name="email" placeholder="Email của bạn" required>
                        <i class="uil uil-envelope"></i>
                    </div>
                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="termCon">
                            <label for="termCon" class="text">Tôi chấp nhận tất cả các điều khoản và điều kiện</label>
                        </div>
                    </div>

                    <div class="input-field button">
                        <button type="submit"><input type="button" value="Đăng ký"></button>
                    </div>
                </form>

                <div class="login-signup">
                    <span class="text">Tôi đã có tài khoản?
                        <a href="#" class="text login-link">Đăng nhập ngay</a>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <script src="<c:url value='/templates/user/assets/js/login.js'/>"></script>
</body>
</html>

