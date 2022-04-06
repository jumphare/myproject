<%@page import="java.text.SimpleDateFormat"%>
<%--@page import="upload.BoardDataBean"--%>
<%--@page import="upload.BoardDBBean"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
//	int num = Integer.parseInt(request.getParameter("num"));
//	String nowpage=request.getParameter("page");

//	BoardDBBean dao = BoardDBBean.getInstance();
//	BoardDataBean board = new BoardDataBean();
//얘네는 나중에~ dto dao 대체시키면 됨 킵고잉

//	dao.count(num); //조회수 증가
//	board = dao.getContent(num); //상세정보 구하기

//	String content = board.getContent().replace("\n", "<br>"); //본문 출력 형식
	
	//저장된 첨부파일 주소
	   String sDownloadPath = request.getRealPath("upload");
	   String sFilePath = sDownloadPath+"\\"; //+ "\\" + board.getUpload();
	   System.out.println("sFilePath="+sFilePath); 
%>
  
<!DOCTYPE html>
<html>
<body>
	<table border=1 width=450 align=center>
		<caption>자유게시판</caption>
		<tr>
			<th>No.</th>
			<td>num값</td>
			<th>View</th>
			<td>조회수 출력</td>
		</tr>
		<tr>
			<th>Writer</th>
			<td><%--=board.getWriter()--%></td>
			<th>Date</th>
			<td>시간 출력</td> <!-- 상세페이지 시간은 날짜 시간 다 출력되게 처리 -->
		</tr>
		<tr>
			<td colspan=4>board.getSubject()</td>
		</tr>
		<tr>
			<td colspan=4>내용 출력</td>
		</tr>
			<%-- 
			if(board.getUpload()!=null){	//첨부파일이 존재하는 경우 행 만들기
			--%>
			<tr>
			<td>첨부파일</td>
			<td colspan=3>
				<!--  <img src="<%= sFilePath%>" width="450" height="350"> -->
				<a href="file_down.jsp?file_name='파일명변수'">파일명값</a>
			</td>		
			</tr>
		<%--	} --%> 
		<tr>
		<!-- 
		if 첫번째
			content의 id랑 현재 접속중인 id(session 영역에 공유되는 값)가 일치할 경우
			content.id.equals(session.id)
			답글/수정/삭제 버튼 보이게 처리
		 else if 두번째
			아이디가 일치하지 않는데 접속중인 회원 등급이 관리자인 경우
			session.member_Grade.equals('manager')
			답글/수정/삭제 버튼 보이게 처리
		 else
			아이디도 다르고 관리자도 아님 (=타회원)
			답글 버튼만 보이게 처리
			
			show() hide() 사용
		 -->
			<td colspan=4 align=center>
				<input type=button id="" value="답글" onClick="location.href='replyForm.jsp?num='num값'&page='nowpage''">
				<input type=button value="수정" onClick="location.href='updateForm.jsp?num='num값'&page='nowpage''">
				<input type=button value="삭제" onClick="location.href='deleteForm.jsp?num='num값'&page='nowpage'">
				<input type=button value="목록" onClick="location.href='list.jsp?page='nowpage'"> 
			</td> 
		</tr>
	</table>
</body>
</html>