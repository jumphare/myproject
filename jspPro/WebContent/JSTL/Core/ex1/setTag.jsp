<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="num1" value="${20}" />
<c:set var="num2">
10.5
</c:set>
<c:set var="today" value="<%= new java.util.Date() %>" />

<html>
	<head>
		<title>set 태그와 remove 태그</title>
	</head>

	<body> 
	<%
		String str="JSP변수";
		request.setAttribute("st",str);
	%>
		변수 str1= <%= str%> <br> 
		변수 str2= ${str}    //리퀘스트 객체의 set 태그로 정의된 변수가 아니므로 출력되지 않음<br>  
		변수 str3= ${st} //set 태그로 정의되었기 때문에 출력됨<br> 		

		변수 num1 = ${num1} <br>
		변수 num2 = ${num2} <br>
		num1 + num2 = ${num1 + num2} <br>
		오늘은 ${today} 입니다.

		<c:remove var="num1" scope="page" />

		<p>
		삭제한 후의 num1 = ${num1} <br>
		삭제한 후의 num1 + num2 = ${num1 + num2}
	</body>
</html>
