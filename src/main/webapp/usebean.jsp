<%@page import="util.Color"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usebean.jsp</title>
</head>
<body>
<%--액션태그 (스크립틀릿은 EL을 사용할 수 없다. )--%>
<jsp:useBean id="a" class= "util.Alpha"/>
${a.line} ${a.column} ${a.fg} ${a.bg} ${a.ch}

<!-- bean 클래스는 a.line이라고 하면 getter메소드로 값을 가져올 수 있다. (a.getline메소드 안 써도 됨. ) -->
<hr>

<jsp:useBean id="d" class="util.Alpha"/>

	<jsp:setProperty property="line" name="d" value="10"/>	
	<jsp:setProperty property="column" name="d" value="20"/>
    <jsp:setProperty property="fg" name="d" value="<%=Color.Black%>"/>
    <jsp:setProperty property="bg" name="d" value="<%=Color.Red%>"/>
    <jsp:setProperty property="ch" name="d" value="Q"/>
		
	${d}	

</body>
</html>