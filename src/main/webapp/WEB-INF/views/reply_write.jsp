<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 댓글 쓰기</title>
</head>
<body>
	<h2>자유게시판 댓글 쓰기</h2>
	<hr>
	
	 <table border="1" cellpadding="0" cellspacing="0" width="500">
	 	<form action="reply">
	 	<input type="hidden" name="bid" value="${viewdto.bid }">
	 	<input type="hidden" name="bgroup" value="${viewdto.bgroup }">
	 	<input type="hidden" name="bstep" value="${viewdto.bstep }">
	 	<input type="hidden" name="bindent" value="${viewdto.bindent }">
	 	<tr>
	 		<th width="100">글번호</th>
	 		<td>${viewdto.bid }</td>
	 	</tr> 
	 	<tr>
	 		<th>답변자</th>
	 		<td><input type="text" name="bname" size="60"></td>
	 	</tr> 
	 	<tr>
	 		<th>글제목</th>
	 		<td><input type="text" name="btitle" value="[답변]  ${viewdto.btitle }" size = "60"><br><br><br></td>
	 	</tr> 
	 	<tr>
	 		<th valign="top">내용</th>
	 		<td height="300" valign="top">
	 			<textarea rows="10" cols="45" name="bcontent">${viewdto.bcontent }
	 			
	 			
	 			
	 			</textarea>
	 		</td>
	 	</tr> 
	 	<tr>
	 		<td colspan="2" align="right">
	 			<input type="submit" value="답변입력">
	 			<input type="button" value="목록" onclick="javascript:window.location='list'">
	 		</td>
	 	</tr>
	 	</form>
	</table>
</body>
</html>