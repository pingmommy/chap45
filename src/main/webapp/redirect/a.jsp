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

<c:redirect url="b.jsp"/>
</body>
</html>

<!-- 

리다이렉트 : 웹에서의 요청이 2번 이상 

어떤 웹사이트에 접속했는데, 어떤 이유로 다른 경로로 유도할 때 
redirect를 쓴다. 



 -->