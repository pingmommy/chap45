<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
<h2>계산기</h2>
<hr>
<form action="calc.jsp" >
	<input name="n1">
	<select name="op">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
	<input name="n2">
	<input type="submit" value="계산">
</form>
</body>
</html>