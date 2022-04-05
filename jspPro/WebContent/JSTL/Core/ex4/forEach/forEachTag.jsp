<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page contentType = "text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    java.util.HashMap mapData = new java.util.HashMap();
    mapData.put("name", "최범균");
    mapData.put("today", new java.util.Date());
%>
<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>" />
<c:set var="map" value="<%= mapData %>" />
<html>
<head><title>forEach 태그</title></head>
<body>
<h4>1부터 100까지 홀수의 합</h4>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" step="2">
<c:set var="sum" value="${sum + i}" />
</c:forEach>
결과 = ${sum}

<h4>구구단: 4단</h4>
<ul>
<c:forEach var="i" begin="1" end="9">
   <li>4 * ${i} = ${4 * i}
</c:forEach>
</ul>

<h4>int형 배열</h4>

<c:forEach var="i" items="${intArray}" begin="2" end="4">
    [${i}]
</c:forEach>

<h4>Map</h4>

<c:forEach var="i" items="${map}">
    ${i.key} = ${i.value}<br>
</c:forEach>

<br><br>

<%
	List <String> list = new ArrayList<String>();
	list.add("자바");
	list.add("JAVA");
	list.add("HTML");
	list.add("오라클");
	list.add("JSP");
	list.add("Python");
	list.add("java script");

	request.setAttribute("slist", list);
%>
<c:forEach var="s" items="${list }"> <!-- 출력되지 않음. -->
	${s } <br>
</c:forEach>

<c:forEach var="s" items="${slist }"> <!-- request 객체 생성하면 출력됨 -->
	${s } <br>
</c:forEach>
<br><br>
<%
	List li= (List) request.getAttribute("slist");
	//List형으로 형변환 후 입력 (기존 변수는 명확히 정의되어있지 않기 때문에)
	
	for(int i=0; i<li.size(); i++){
		String str=(String)li.get(i);	//String형으로 형변환 필요
		out.println(str+"<br>");
	}
%>
<br><br>

<c:set var="s1" value="<%=list %>"/>
<c:forEach var="s2" items="${s1}"> <!-- set 태그로 정의하면 출력 가능 -->
	${s2 } <br>
</c:forEach>




</body>
</html>
