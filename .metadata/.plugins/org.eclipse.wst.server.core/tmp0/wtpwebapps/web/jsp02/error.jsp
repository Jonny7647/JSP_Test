<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Error 페이지 입니다</h2>
	<h3> 공사중입니다...메인페이지로 돌아가세요</h3>
	<%= exception.getMessage() %>
	
</body>
</html>