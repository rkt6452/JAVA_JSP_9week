<%@ page contentType="text/html;charset=utf-8" %>
<% 
String storedID = application.getInitParameter("MasterID");
String storedPW = application.getInitParameter("MasterPassword");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals(storedID) && pw.equals(storedPW)) {
	session.setAttribute("MasterLoginID", id);
}
%>
<html>
<head>
<title>로그인 처리</title>
</head>
<body>
로그인에 성공했습니다 <br><br>
<a href="logincheck.jsp">로그인 체크</a>
</body>
</html>