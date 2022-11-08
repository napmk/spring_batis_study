<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 글 목록</title>
</head>
<body>
	<h2>자유게시판</h2>
	<hr>
	<table class="table custom-table" border="1" cellspacing="0" cellpadding="0" width="1000">
		<tr>
			<th>번호</th>
			<th>글쓴이</th>
			<th width="500">글제목</th>
			<th>게시일</th>
			<th>조회수</th>
		</tr>
		<!-- 첫번째 글 가지고 올때 bdto로 가져옴 -->
		총 게시글 수 :${boardCount } 개
		<c:forEach items="${list}" var="dto">
		<tr align="center" height="40">
			<td>${dto.bid }</td>
			<td>${dto.bname }</td>
			<td style="text-align:left">
				<c:forEach begin ="1" end="${dto.bindent }">&nbsp;&nbsp;&nbsp;</c:forEach>
				<a href="content_view?bid=${dto.bid}">${dto.btitle }</a>	<!-- 중요 번호 골라내서 -->
			</td>
			<td>${dto.bdate }</td>
			<td>${dto.bhit }</td>
		
		</tr>
		</c:forEach>
		
		
		
		<tr>
			<td colspan="5" align="right"><input type="button" value="글쓰기" onclick="javascript:window.location='write_form'"></td>
			<!--  <a href = "write_form">글쓰기</a>-->
		</tr>
	</table>
</body>
</html>
