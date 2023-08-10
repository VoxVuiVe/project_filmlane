<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <%@ include file="/common/head_profile.jsp" %>
         
    <title>Edit Profile</title>
</head>
<body>
    
    <div class="container">
        <div class="forms">
            <div class="form login">
                <span class="title">Chỉnh sửa thông tin</span>

                <form action="#">
                    <div class="input-field">
                        <input type="text" placeholder="Họ và tên" required>
                        <i class="uil uil-user icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" placeholder="Tên đăng nhập" required>
                        <i class="uil uil-user icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" placeholder="Email" required>
                        <i class="uil uil-user icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" placeholder="Địa chỉ" required>
                        <i class="uil uil-user icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" placeholder="Chuyên ngành" required>
                        <i class="uil uil-user icon"></i>
                    </div>

                    <div class="input-field button">
                        <input type="button" value="Cập nhật thông tin">
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

