<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="true">
	조건: true --> 무조건 실행 <br><br>
</c:if>

<c:if test="${param.name=='toto'}">
	조건: \${param.name=='toto'} ---> 실행 <br>
	       (request.getParameter("name")=='toto') <br><br>
</c:if>

<c:if test="${param.age>=20 }">
    조건: \${param.age>=20 } ---> 실행<br>
           (Integer.parseInt(request.getParameter("age"))>=20) <br>
    ---> EL을 사용할 경우 굳이 강제형변환을 하지 않아도 비교연산이 가능하다는 장점 <br><br>
</c:if>

