<%@page import="jspbook.Product"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
	<head>		
		<meta charset="utf-8">
		<title>EL 예제</title>
	</head>
	<body>
		<center>
		<H2>EL 예제-상품선택</H2>
		<HR>
		1. 선택한 상품은 : ${param.sel} <br>
		   또다른 표현법 : <%=request.getParameter("sel") %><br>
		2. num1 + num2 = ${product.num1+product.num2} <br>
		<%
			Product pro=(Product)session.getAttribute("product");
		%>
		   또다른 표현법 : <%=pro.getNum1()+pro.getNum2() %>
		<!-- session 영역으로 객체를 생성했기 때문에 여기서 걍 바로 쓸 수 있음 -->
		</center>
	</body>
</html>