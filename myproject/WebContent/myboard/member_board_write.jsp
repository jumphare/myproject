<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
<head>
	<title>게시판</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="<%=request.getContextPath() %>/myboard/script.js"></script>
</head>
<body>

<form action="<%=request.getContextPath() %>/BoardAddAction.do" method="post" 
	  enctype="multipart/form-data"> <!-- 이 객체로 getParameter 할 것 -->
<table cellpadding="0" cellspacing="0" align=center border=1>
	<tr align="center" valign="middle">
		<td colspan="5">자유게시판</td>
	</tr>
		<tr><td colspan="2">&nbsp;</td></tr>
	<tr>
		<td colspan="2">
			<input name="board_subject" id="board_subject" type="text" size="80" maxlength="100" 
				value="제목칸"/>
		</td>
	</tr>
	<tr> 
 
		<td colspan="2">
			<textarea name="board_content" id="board_content" cols="60" rows="15"></textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">파일</div>
		</td>
		<td>
			<input name="board_file" type="file"/>
		</td>
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">			
			<input type=submit value="등록">
			<input type=reset value="취소">
		</td>
	</tr>
</table>
</form>

</body>
</html>