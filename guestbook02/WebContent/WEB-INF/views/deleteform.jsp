<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String no = request.getParameter("no");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�� ����</title>
</head>
<body>
	<form method="post" action="/guestbook02/view/delete.jsp">
	<input type='hidden' name="no" value="">
	<table>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="Ȯ��"></td>
			<td><a href="/guestbook02/gb">�������ε��ư���</a></td>
		</tr>
	</table>
	</form>
</body>
</html>