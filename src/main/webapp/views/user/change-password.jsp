<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- ===== Iconscout CSS ===== -->
<link rel="stylesheet"
	href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
<link rel="shortcut icon"
	href="<c:url value="/views/user/view/readme-images/favicon.svg"></c:url>"
	type="image/svg+xml">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<!-- ===== CSS ===== -->
<%@ include file="/common/head_profile.jsp" %>

<title>Change Password</title>
</head>
<body>

	<div class="container">
		<div class="forms">
			<div class="form login">
				<span class="title">Đổi mật khẩu</span>

					<div class="input-field">
						<input type="password" name="currentPass" id="currentPass" class="password"
							placeholder="Mật khẩu hiện tại" required> <i
							class="uil uil-lock icon"></i> <i class=""></i>
					</div>
					<div class="input-field">
						<input type="password" name="newPass" id="newPass" class="password" placeholder="Mật khẩu mới"
							required> <i class="uil uil-lock icon"></i> <i class=""></i>
					</div>
					<div class="input-field"> 
						<input type="password" name="newPass" class="password"
							placeholder="Xác thực mật khẩu" required> <i
							class="uil uil-lock icon"></i> <i
							class="uil uil-eye-slash showHidePw"></i>
					</div>
					<h3 style="color: red" id="messageChangePass"></h3>
					<div class="checkbox-text">
						<a href="<c:url value="/index"></c:url>"  class="text forgot-link">Về trang chủ</a>
					</div>
					<div class="input-field button"><input type="submit" id="changePassBtn" value="Đổi mật khẩu">
					</div>
			</div>
		</div>
	</div>

	<script>
	$('#changePassBtn').click(function() {
        $('#messageChangePass').text('');
        var currentPass = $('#currentPass').val();
        var newPass = $('#newPass').val();
        var formData = {
        		'currentPass': currentPass,
        		'newPass': newPass		
        };
        $.ajax({
            url: 'changePass',
            type: 'POST',
            data: formData
        }).then(function(data) {
            $('#messageChangePass').text('Mật khẩu của bạn đã được đổi thành công!');
            setTimeout(function() {
        		window.location.href = 'http://localhost:8080/ASM_Java4/index';
        	}, 5*1000);
        }).fail(function(error){
            $('#messageChangePass').text('Mật khẩu không chính xác, thử lại!');
        });
    });
	</script>
	<script src="<c:url value='/templates/user/assets/js/login.js'/>"></script>
</body>
</html>

