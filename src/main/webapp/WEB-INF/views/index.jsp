<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD Spring Hibernate with Oracle Database</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
	<h1>DANH SÁCH SINH VIÊN</h1>
	<form action="search" method="post">
		Nhập tên cần tìm <input type="text" name="searchname"/> <button class="btn btn-info"> Tìm </button> <a class="btn btn-primary" href="addstudent">Thêm mới</a>
	</form><hr />
	<table class="table table-bordered">
		<tr>
			<th>Mã SV</th>
			<th>Họ và tên</th>
			<th>Ngày sinh</th>
			<th>Giới tính</th>
			<th>Email</th>
			<th>Điện thoại</th>
			<th>Địa chỉ</th>
			<th>Tình trạng</th>
			<th></th>
		</tr>
		<c:forEach var="s" items="${students}">
		<tr>
			<td>${s.studentId}</td>
			<td>${s.fullName}</td>
			<td>${s.birthDay}</td>
			<td>
				<c:choose>
					<c:when  test="${s.gender}">Nam</c:when>
					<c:otherwise>Nữ</c:otherwise>
				</c:choose>
			</td>
			<td>${s.email}</td>
			<td>${s.phone}</td>
			<td>${s.address}</td>
			<td>
				<c:choose>
					<c:when  test="${s.active}">Đang học</c:when>
					<c:otherwise>Đã dừng</c:otherwise>
				</c:choose>
			</td>
			<td>
				<a onclick="return confirm('Bạn có muốn xóa không?')" class="btn btn-danger" href="delete?id=${s.studentId}">Xóa</a>
				<a class="btn btn-success" href="edit?id=${s.studentId}">Sửa</a>
			</td>
		</tr>
	</c:forEach>
	</table>
	
	</div>
</body>
</html>