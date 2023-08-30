<%@page import="util.Color"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix = "c" uri="jakarta.tags.core"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usebean3.jsp</title>
</head>
<body>
<h1>Alpha1</h1>
<jsp:include page="alpha.jsp">
	<jsp:param value="7" name="line"/>
	<jsp:param value="7" name="column"/>
</jsp:include>

<h1>Alpha2</h1>
<jsp:include page="alpha.jsp">
	<jsp:param value="5" name="line"/>
	<jsp:param value="5" name="column"/> 
</jsp:include>	

<h1>Alpha3: Default값일 때</h1>
<jsp:include page="alpha.jsp"/>



</body>
</html>

<%-- ${param.line} => param객체를 사용함. 
 ${param.line-1} EL식 안에서 연산이 가능함. EL- Expression Language : 언어는 연산이 가능함. 
 ${param.line?param.line-1:3} => 삼항연산자도 가능함. 
 --%>