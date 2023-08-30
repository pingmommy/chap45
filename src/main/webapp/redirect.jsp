<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>redirect.jsp</title>
</head>
<body>

<h1>redirect Practice</h1>
<hr>

<p>이 url말고 다른 걸로 접속하세요: url값의 url로 이동한다. </p>

<c:redirect url="result.jsp"/>

</body>
</html>