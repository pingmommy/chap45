<%@page import="util.Color"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="jakarta.tags.core"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>usebean.jsp</title>
</head>
<body>

<!-- 알파 열개 -> 반복문 필요 -> 태그라이브라리 -> c:foreach -->
<!-- <ol> -->
<%--   <c:forEach var ="i" begin="0" end="10"> --%>
<%--   <jsp:useBean id="ar" class="util.Alpha"/> 빈은 한 번 만들면 또 안 만든다.  --%>
<!-- 	<li style ="font-family :monospace;"> -->
<%-- 		<span style="color:${a.fg}; background:${a.bg}"> --%>
<%-- <%-- 			<jsp:getProperty property="ch" name="a"/> --%> 
<%-- 		<%-- 	${a.ch} --%> --%>
<!-- 		</span> -->
<!-- 	</li> -->
<%-- 	<c:remove var="a"/>  --%>
<%--  </c:forEach> --%>

<!-- </ol> -->
<hr>
<table>
  <tbody>
	<c:forEach var ="i" begin="0" end="19">
	 <tr>
	 <c:forEach var ="j" begin="0" end="39">
	 <jsp:useBean id="a" class="util.Alpha"/> <%--빈은 id가 있으면 또 만들지 않는다. --%>
	  <td style="background:${a.fg}; color:${a.bg}">${a.ch}</td>
	  <c:remove var="a"/>
	 </c:forEach>
	 </tr>
	</c:forEach>
  </tbody>	
</table>

</body>
</html>