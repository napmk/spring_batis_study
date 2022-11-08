<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용보기</title>
</head>
<body>
	<h2>글 내용보기</h2>
	<hr>
	<table border="1" cellpadding="0" cellspacing="0" width="500">
		<tr>
			<th width="100">글번호</th>
			<td>${viewdto.bid }</td>
		</tr>
		<tr>
			<th>글쓴이</th>
			<td>${viewdto.bname}</td>
		</tr>
		<tr>
			<th>글제목</th>
			<td>${viewdto.btitle }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td height="300">${viewdto.bcontent }</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>${viewdto.bdate }</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
	 			<input type="button" value="답변" onclick="javascript:window.location='reply_write?bid=${viewdto.bid}'">
	 			<input type="button" value="수정" onclick="javascript:window.location='modify_view?bid=${viewdto.bid}'">
	 			<input type="button" value="삭제" onclick="javascript:window.location='delete?bid=${viewdto.bid }'">
	 			<input type="button" value="목록" onclick="javascript:window.location='list'">
	 		</td>
		</tr>
		
	</table>
</body>
</html>