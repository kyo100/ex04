<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>게시판 목록</title>
</head>
<body>
	<h1>게시판 목록</h1>
	<form name="frm" action="list">
		<select name="key">
			<option value="title" <c:out value="${key=='title'?'selected':''}"/>>제목</option>
			<option value="content" <c:out value="${key=='content'?'selected':''}"/>>내용</option>
		</select>	
		<input type="text" name="word" value="${word}">
		<input type="submit" value="검색">
		<input type="text" name="start" value="${start}">
		검색:${total}간
	</form>
	<table border=1 width=500>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.id}</td>
				<td>${vo.title}</td>
				<td><fmt:formatDate value="${vo.wdate}" pattern="yyyy-MM-dd kk:mm:ss"/></td>
			</tr>
		</c:forEach>
	</table>
	<button onClick="funPre()">◀</button>
	<button onClick="funNext()">▶</button>
</body>
<script>
	var start=${start};
	var total=${total};
	
	function funNext(){
		if(start+10 < total){
			start = start + 10;
			parseInt(frm.start.value);
			frm.submit();	
		}
	}
	function funPre(){
		if(start > 1){
			start = start - 10;
			parseInt(frm.start.value);
			frm.submit();
		}
	}
</script>
</html>