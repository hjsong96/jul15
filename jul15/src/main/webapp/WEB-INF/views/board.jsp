<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
	<h1>게시판 입니다.</h1>
	<table>
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>글쓴이</td>
			<td>쓴날짜</td>
			<td>좋아요</td>
		</tr>
		<c:forEach items="${list }" var="row">
		<tr>
			<td>${row.bno }</td>
			<td>
			<a href="./detail?bno=${row.bno }">${row.btitle }</a>
			</td>
			<td>${row.bwrite }</td>
			<td>${row.bdate }</td>
			<td>${row.blike }</td>
		</tr>		
		</c:forEach>
	</table>
	
	
</body>
</html>