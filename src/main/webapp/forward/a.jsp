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
<h1>a.jsp</h1>
<hr>
<jsp:include page="../alpha.jsp">
	<jsp:param value="3" name="line"/>
	<jsp:param value="3" name="column"/>
</jsp:include>

<jsp:forward page="b.jsp"/>
</body>
</html>

<!-- forward는 전부 was에서 이루어짐. 웹브라우저는 forwarding 과정을 모름.

HTTP protocol : request response protocol


리다이렉트 : 웹에서의 요청이 2번 이상 

 -->