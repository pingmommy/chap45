<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward.jsp</title>
</head>
<body>
<jsp:useBean id="a" class ="util.Alpha" scope="request"/>
<jsp:forward page="result.jsp"/>

</body>
</html>