<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html>
<head>
	<title>MVC 게시판 수정</title>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="<%=request.getContextPath() %>/board/script.js"></script>
</head>
<body>

<form action="<%=request.getContextPath() %>/BoardModify.do" method="post" 
	  enctype="multipart/form-data">
<input type=hidden id="page" name="page" value="${page }"/>
<input type=hidden id="board_num" name="board_num" value="${board.board_num }"/>
<table cellpadding="0" cellspacing="0" align=center border=1>
	<tr align="center" valign="middle">
		<td colspan="5">수정</td>
	</tr>
<tr><td colspan="2">&nbsp;</td></tr>
	<tr>
		<td colspan=2>
			<input name="board_subject" id="board_subject" type="text" size="80" maxlength="100" 
				value="{board.board_subject }"/>
		</td>
	</tr>
	<tr>
		<td colspan=2>
			<textarea name="board_content" id="board_content" cols="60" rows="15">{board.board_content }</textarea>
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
			<input type=submit value="수정">
			<input type=reset value="취소">
		</td>
	</tr>
</table>
</form>

</body>
</html>