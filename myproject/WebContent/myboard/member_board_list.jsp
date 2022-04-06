<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%--
int count=(Integer)request.getAttribute("listcount");
--%> 
<!-- 총 게시글 수 : <%--=count--%><br> -->
 
<table border="1" width="700" align="center">
	<caption>자유게시판</caption>
	<tr>
		<td colspan=3 align="left" border="0"> 총 게시글 수 : {listcount} </td>
		<td colspan=2 align="right" border="0"><a href="">작성</a></td> 
		<td align="right" border="0"><a href="">삭제</a></td>
		<!-- 삭제는 관리자가 들어갈 때만 보이게 설정... checked 위에. -->
	</tr>
	<tr>   
		<th width="50">No.</th>
		<th width="400">Subject</th>
		<th width="100">Writer</th>
		<th width="100">Date</th>
		<th width="50">Count</th>
		
		<th width="50" >Checked</th> 
		<!-- js 또는 css에서 --- 관리자가 들어갈 때만 컬럼이 보이게 설정 -->
	</tr>
	
</table>
<table border="1" width="700" align="center">

<!-- 글이 존재할 때만 리스트 출력 -->
<c:if test="${listcount>0}">

	<c:set var="num" value="${listcount-(page-1)*10}" />
	<c:forEach var="b" items="${boardlist}">
	<tr> 
		<td align="center"> ${num}
			<c:set var="num" value="${num-1 }"/> </td>
		<td> 
			<c:if test="${b.board_re_lev>0}">
				<c:forEach var="i" begin="0" end="${b.board_re_lev }">
					&nbsp;
				</c:forEach>
			</c:if>
			<a href="./BoardDetailAction.do?num=${b.board_num }&page=${page}">${b.board_subject }</a>
 		</td>
		<td> ${b.board_name } </td>
		<td> <fmt:formatDate value="${b.board_date}" pattern="yy.MM.dd  HH:mm"/> </td>
		<!-- 날짜 표기 시, date클래스 객체 생성해 현재시간 구해서 비교해보고
		날짜가 같으면 시간만 표시, 날짜가 다를 경우 작성 날짜가 뜨도록 변경 -->
		<td align="center"> ${b.board_readcount } </td>
	</tr>
	</c:forEach>
	
</c:if>
</table>
<br><br>

<!-- 페이지 목록 -->
<center>
<c:if test="${listcount>0}"> <!-- 글이 존재하는 경우에만 페이지 출력 -->
<!-- 1페이지로 -->
	<a href="./BoardListAction.do?page=1" style="text-decoration:none"> << </a>
<!-- 이전 페이지 -->
	<c:if test="${page>1 }">
		<a href="./BoardListAction.do?page=${page-1 }"> < </a></c:if>

	
	<c:forEach var="i" begin="${startPage }" end="${endPage }">
		<c:if test="${i==page }">  <!-- 현재 페이지 -->
			[${i}]
		</c:if>
		<c:if test="${i!=page }"> <!-- 현재 페이지가 아닌 경우 -->
			<a href="./BoardListAction.do?page=${i}">[${i}]</a>
		</c:if>	
	</c:forEach>
	
<!-- 다음 페이지 -->
	<c:if test="${page <pageCount}">
		<a href="./BoardListAction.do?page=${page+1 }"> > </a></c:if>
<!-- 끝페이지로 -->
	<a href="./BoardListAction.do?page=${pageCount}" style="text-decoration:none"> >> </a>
		
</c:if>
</center>