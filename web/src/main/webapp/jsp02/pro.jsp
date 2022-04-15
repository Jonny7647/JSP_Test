<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> process page </h2>
	<%
		// http://localhost:8080/web/jsp02/pro.jsp?id=java&pw=1111	
		// 데이터 꺼내서 출력하기 
		String id = request.getParameter("id"); 
		String pw = request.getParameter("pw"); 
		String test = request.getParameter("test");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(test);
		// 로그인이면, DB 접속해서 id pw 일치하는지 확인하고 결과에 따른 처리 
		
		// 동물 
		//String pet = request.getParameter("pet"); 하나만 꺼내짐 
		//System.out.println(pet);
		/*
		String[] pets = request.getParameterValues("pet"); 
		if(pets != null){
			System.out.println("pets.length: " + pets.length); 
			for(String s : pets){
				System.out.println(s);
			}
		}*/
		String[] pets = null; 
		// 사용자가 체크박스 하나도 선택을 안하면 pet이라는 이름으로 데이터가 안넘어옴.
		// 이때 꺼내서 바로 사용하면, 에러 발생!!! 
		if(request.getParameterValues("pet") != null){
			pets = request.getParameterValues("pet");
			System.out.println("pets.length: " + pets.length); 
			for(String s : pets){ %>
				<h3>pets : <%=s%></h3>
			<%}
		}
		
		out.println("--------------------------------------------------<br />");
		// 파라미터 이름 목록 출력 
		Enumeration enu = request.getParameterNames(); 
		while(enu.hasMoreElements()){
			String name = (String)enu.nextElement();
			out.println(name + " , ");
		}

		out.println("--------------------------------------------------<br />");
		
		
	%>

<body>
	<table>
		<tr>
			<td> id </td>
			<td> <input type="text" name="id" value="<%= id %>"  /></td>
		</tr>
		<tr>
			<td> pw </td>
			<td> <input type="text" name="pw" value="<%= pw %>"  /></td>
		</tr>
		<tr>
			<td> pets </td>
			<td> 
				<input type="checkbox" name="pet" value="dog"  <%if(pets != null){ for(String p:pets){ if(p.equals("dog")){%>checked<%}}} %> /> 강아지 
				<input type="checkbox" name="pet" value="cat"  <%if(pets != null){ for(String p:pets){ if(p.equals("cat")){%>checked<%}}} %> /> 고양이
				<input type="checkbox" name="pet" value="tiger" <%if(pets != null){ for(String p:pets){ if(p.equals("tiger")){%>checked<%}}} %> /> 호랑이 
			</td>
		</tr>
	</table>


</body>


<%--
<h3> id : <%= id %></h3>
<h3> pw : <%= pw %></h3>
<h3> test : <%= test %></h3>
 --%>





</body>
</html>