<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sửa sinh viên</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h1>Sửa sinh viên</h1>
		<f:form action="update" method="post" modelAttribute="student">
			<table class="table">
				<tr>
					<td>Mã số</td>
					<td><f:hidden path="studentId" />${student.studentId}</td>
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
							<c:if test="${student.gender==true}">
								<option selected value="1">Nam</option>
								<option value="0">Nữ</option>
							</c:if>
							<c:if test="${student.gender==false}">
								<option value="1">Nam</option>
								<option selected value="0">Nữ</option>
							</c:if>
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
							<c:if test="${student.active==true}">
								<option selected value="1">Đang học</option>
								<option value="0">Đã nghỉ</option>
							</c:if>
							<c:if test="${student.active==false}">
								<option value="1">Đang học</option>
								<option selected value="0">Dừng</option>
							</c:if>
					</select></td>
				</tr>
				<tr>
					<td colspan="2">
						<button class="btn btn-primary">Cập nhật</button>
					</td>
				</tr>
			</table>
		</f:form>
	</div>
</body>
</html>