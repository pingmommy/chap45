<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body>
<h1>b.jsp</h1>
<hr>
<jsp:include page="../alpha.jsp">
	<jsp:param value="4" name="line"/>
	<jsp:param value="4" name="column"/>
</jsp:include>	
<c:redirect url="c.jsp"/>
</body>
</html>