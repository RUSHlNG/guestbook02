<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String no = request.getParameter("no");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 삭제</title>
</head>
<body>
	<form method="post" action="/guestbook02/gb">
	<input type='hidden' name="no" value="<%= no %>">
	<input type='hidden' name="a" value="delete">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="확인"></td>
			</tr>
	</table>
	</form>
	<a href="/guestbook02/gb">메인으로 돌아가기</a>
</body>
</html>
