<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> form page </h2>
	<form action="pro.jsp?test=10" method="post">
		ID : <input type="text" name="id" /> <br />
		PW : <input type="password" name="pw" /> <br />
		좋아하는 동물 : 
			<input type="checkbox" name="pet" value="dog"/> 강아지 
			<input type="checkbox" name="pet" value="cat" /> 고양이 
			<input type="checkbox" name="pet" value="tiger"/> 호랑이 <br /> 
		<input type="submit" value="로그인" />
	</form>
	
	


</body>
</html>