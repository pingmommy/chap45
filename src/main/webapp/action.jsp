<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix ="c" uri="jakarta.tags.core" %>   


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action.jsp</title>
</head>
<body>

<!-- 태그라이브러리 안의 수행결과가 웹으로 날라간다. -->

<c:forEach var ="i" begin="0" end="10">
${i} <br>
</c:forEach>
 
<jsp:useBean id="alpha" class="util.Alpha"/>  액션테그, 태그립지시어와 다르다.
<h2>${alpha}</h2>
<hr>
<ul>
<c:forEach var ="i" begin="0" end="5">

<jsp:useBean id="a" class="util.Alpha"></jsp:useBean>
<li>${a}</li>
<c:remove var="a"/>
</c:forEach>
</ul>
</body>
</html>