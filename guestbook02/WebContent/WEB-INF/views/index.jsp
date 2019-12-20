<%@page import="com.bigdata2019.guestbook.dao.GuestbookDao"%>
<%@page import="com.bigdata2019.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
    	GuestbookDao dao = new GuestbookDao();
		List<GuestbookVo> list = dao.findAll();
    %>    
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
</head>
<body>
	<form action="/guestbook02/insert.jsp" method="post">

	
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="contents" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE="확인 "></td>
		</tr>
	</table>
	</form>
	<br>
		<%
		int totalCount = list.size();
		int index = 0;
		 for(GuestbookVo vo: list){
		%>
	
	<table width=510 border=1>

		
		<tr>
			<td>[<%=totalCount-index++ %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getRegDate() %></td>
			<td><a href="/guestbook02/deleteform.jsp?no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%= vo.getContents().replace("\n","<br/>") %></td>
		</tr>
	</table>
		<br/>
		
	
	<%
	 }
	%>
</body>
</html>