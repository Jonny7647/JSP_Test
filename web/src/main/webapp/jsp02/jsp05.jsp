<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<%!
	// 선언부 : 클래스 영역 
	// 클래스변수, 인스턴스 변수, 메서드
	static int num = 5; 
	int num2 = 10; 
	public int multiply(int a, int b){
		return a * b; 
	}
%>
<%-- 출력문 : 세미콜론 없이 작성 --%>
num = <%= num %> <br />
num2 = <%= num2 %> <br />
10 * 20 = <%= multiply(10, 20) %> <br />

<%
	// 스크립트릿 : 메서드 영역 
	for(int i = 0; i < num; i++) {
		// 자바 코드로 브라우저에 출력 
		out.println("java server pages " + i + "<br />"); 
	}
	System.out.println("콘솔에 출력");
	
	String col = "yellow"; // 지역 변수  
%>
<body bgcolor="<%= col %>">

</body>






