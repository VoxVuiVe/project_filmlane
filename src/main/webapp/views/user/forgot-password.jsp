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
			<div class="form forgot">
				<span class="title">Quên mật khẩu</span>

					<div class="input-field">
						<input type="email" id="email" name="email"
								placeholder="Email của bạn" required> <i
								class="uil uil-envelope"></i>
						</div>
						<div class="input-field button">
							<input type="submit" id="sendBtn" value="Gửi yêu cầu">
						</div>
						<h3 style="color: red; font-size: 15px;" id="messageReturn"></h3>


					<div class="login-signup">
						<span class="text">Quay lại <a href="index"
							class="text login-link">đăng nhập</a>
						</span>
					</div>
			</div>
		</div>
	</div>

	
	<script src="<c:url value='/templates/user/assets/js/login.js'/>"></script>
	<script>
	$('#sendBtn').click(function() {
        $('#messageReturn').text('');
        var email = $('#email').val();
        var formData = {'email': email};
        $.ajax({
        	url: 'forgotPass',
        	type: 'POST',
        	data: formData
        }).then(function(data) {
        	$('#messageReturn').text('Mật khẩu đã được reset, vui lòng check email');
        	setTimeout(function() {
        		window.location.href = 'http://localhost:8080/ASM_Java4/index';
        	}, 5*1000);
        }).fail(function(error) {
        	$('#messageReturn').text('Không tìm thấy email, vui lòng nhập lại');
        });
    });
	</script>
</body>
</html>

