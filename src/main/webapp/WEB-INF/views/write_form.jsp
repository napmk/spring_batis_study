<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="./resources/css/border.css">
<title>자유게시판 글쓰기</title>
</head>
<body>
	<h2>자유게시판 글쓰기</h2>
	<table class="table custom-table" cellpadding="0" cellspacing="0" width="1000">
		<form action="write">
			<tr>
				<th>이 름</th>
				<td><input type="text" name="bname" size="60"></td>
			</tr>		
			<tr>
				<th>제 목</th>
				<td><input type="text" name="btitle" size="60"></td>
			</tr>
			<tr>
				<th>내 용</th>
				<td><textarea name="bcontent" rows="10" cols="45"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input class="btn" type="submit" value="글입력">&nbsp;&nbsp;
					<input class="btn" type="reset" value="취소">&nbsp;&nbsp;
					<input class="btn" type="button" value="글목록" onclick="javascript:window.location='list'"> 
				</td>
			</tr>
		</form>
	</table>
</body>
</html>