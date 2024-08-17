<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm mới sinh viên</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>Thêm mới sinh viên</h1>
		<span style="color: red">${error}</span>
		<f:form action="save" method="post" modelAttribute="student">
			<table class="table">
				<tr>
					<td>Mã số</td>
					<td><f:input path="studentId" /></td>
				</tr>
				<tr>
					<td>Họ và tên</td>
					<td><f:input path="fullName" /></td>
				</tr>
				<tr>
					<td>Ngày sinh</td>
					<td><f:input path="birthDay" /></td>
				</tr>
				<tr>
					<td>Giới tính</td>
					<td><select name="gender" id="gender">
							<option value="1">Nam</option>
							<option value="0">Nữ</option>
					</select></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><f:input path="email" /></td>
				</tr>
				<tr>
					<td>Điện thoại</td>
					<td><f:input path="phone" /></td>
				</tr>
				<tr>
					<td>Địa chỉ</td>
					<td><f:input path="address" /></td>
				</tr>
				<tr>
					<td>Tình trạng</td>
					<td><select name="active" id="active">
							<option value="1">Đang học</option>
							<option value="0">Dừng</option>
					</select></td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="btn btn-primary">Lưu</button>
					</td>
				</tr>
			</table>
		</f:form>
	</div>
</body>
</html>