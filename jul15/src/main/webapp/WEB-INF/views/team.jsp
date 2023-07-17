<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team</title>
</head>
<body>
	<h1>Team Random</h1>
	<table border="1">
		<thead>
			<th>팀명</th>
			<th>팀장</th>
			<th colspan="5">팀원</th>
		</thead>
		<tbody>
		<c:set var="num" value="1"/>
		<c:forEach items="${list }" var="i">
			<tr>
			<c:if test="${num % 5 == 0 }"></c:if>
			<td>${num/5 + 1 }조</td>
			<td>${i }</td>
			<c:set var="num" value="${num + 1 }"/>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>