<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- switch case
	   다수의 조건이 참일 경우 가장 먼저 해당되는 케이스만 출력되고 끝남  -->
${param.name }님은
	<c:choose>
		<c:when test="${param.age>=20 }">성인입니다.<br>
		</c:when>
		<c:when test="${param.age>=14 }"> 청소년입니다.<br>
		</c:when>
		<c:otherwise> 어린이입니다.<br>
		</c:otherwise>
	</c:choose>
	
<!-- 혼합된 다중 조건문 -->
<ul>
<c:choose>
		<c:when test="${param.name=='toto' }">
			<li>당신의 이름은 ${param.name } 입니다.</li>
		</c:when>
		<c:when test="${param.age>=20 }">  <!-- 이름이 toto가 아닌 경우에만 조건을 비교 -->
			<li>당신은 성인입니다.</li>
		</c:when>
		<c:otherwise>
			<li>당신은 toto도 아니고 성인도 아닙니다. </li>
		</c:otherwise>
	</c:choose>
</ul>
