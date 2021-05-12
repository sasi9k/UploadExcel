<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result data</title>
</head>
<%
String fileType = request.getParameter("fileType");
/* String file = request.getContentType("file"); */
%>
<body>
<%= fileType %>
</body>
</html>