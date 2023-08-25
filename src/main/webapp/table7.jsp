<%@page import="util.Alpha"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table.jsp</title>
<style type="text/css">
table {
	font-family: monospace;
	font-size: 3em;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">

class Blink{  // constructor(매개변수(사용자가 입력한 문자. 매개변수의 이름만  ch)){}로 사용자가 입력한 문자 넣기 필드에다가 
	
	//필드변수는 let쓰면 안 됨
	
	tid =[];
	a;
	
	constructor(ch){
		//ch='C';
		this.a = ch;
		console.log(this.a+"field");
		console.log(ch+"parameter");
	}
	
	run() {
		console.log("run.."+Math.random())	
		
		let table = document.querySelector('table')
		
		for(let tr of table.rows){
			for(let td of tr.cells){
			 
				if(td.innerHTML== this.a){
				let id = setInterval(function() {
					if(td.style.visibility =='hidden')
						td.style.visibility ='visible'
					else
						td.style.visibility='hidden'
				}, Math.random()*500+10);
			  
			  this.tid.push(id)
			}
		}
	}
			
 }
	
	clear() {
		console.log("clear.."+Math.random())	
		console.log(this.tid)	
		for(let id of this.tid){
			
			clearInterval(id)
			
		
		}
	}
	
}


window.onload = function() {
	let start = document.querySelectorAll('button')[0];
	let select = document.querySelector('select');
	let stop = document.querySelectorAll('button')[1];
	
	start.disabled = false;
	select.disabled=false;
	stop.disabled = true;
	
	
	<%--let a =select.options[select.selectedIndex].value
	 를 어디에 두느냐에 따라서 선택한 알파벳이 매개값으로 전달되기도 하고 아니면 인덱스[0]값인 'A'로 
	 초기화 되기도 하였다. 여기에 대해서 생각을 좀 해봐야 겠다. --%>
	start.onclick = function(){
		
		start.disabled = true;
		select.disabled= true;
		stop.disabled = false;
	    let a = select.options[select.selectedIndex].value
		console.log(a+"let")
		
		blink = new Blink(a);   <%--  생성시에 사용자가 선택한 문자를 보낸다. --%>
		blink.run();
		
		console.log("start..."+Math.random())
	}
	
	stop.onclick = function(){
		
		start.disabled = false;
		select.disabled = false;
		stop.disabled = true;
		
		blink.clear();
		
		
		console.log("stop.."+ Math.random())
	}
	
}


</script>
</head>
<body>
<h1>Table Tag 연습</h1>
<button>start</button>

<%--셀렉트가 들어간다 셀렉트 안에 옵션이 들어간다.--%>
<select>
	<% for(var i=0;i<26;i++){
	%>
	<option><%=(char)('A'+i)%></option>
	<%
	}
	%>
</select>


<button>stop</button>
<hr>
<table>
	<tbody>

	<%
		for (var i=0; i<20; i++) {
	%>
	<tr>
		<% 
			for (var j=0; j<40; j++) {
				var a = new Alpha();
		%>
		<td style="color: <%=a.getFg()%>; background: <%=a.getBg()%>" ><%=a.getCh()%></td>
		<%
			}
		%>
	</tr>
	<%
		}
	%>
	</tbody>
</table>

</body>
</html>