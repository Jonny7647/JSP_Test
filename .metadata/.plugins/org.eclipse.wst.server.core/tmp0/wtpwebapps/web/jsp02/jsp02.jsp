<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.Date"
    session="true"
    buffer="8kb"
    autoFlush="true"
    isThreadSafe="true"
    info="화면에 출력안되는 페이지관련 메모 작성하는 속성"
    errorPage="error.jsp"
    isErrorPage="false"
    isELIgnored="false"
    deferredSyntaxAllowedAsLiteral="false"
    %>

<%-- el : #{변수}, ${변수} --%>   
 
<%-- JSP 주석, 페이지 소스보기해도 내용물이 안보임 --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%= new Date() %> <%-- 스크립트 출력문 : 자바코드 출력 --%>
	<%--	// 스크립트릿
		// 자바 코드 작성부분
		for(int i = 0; i < 10000; i++) { 	--%>
			// html 태그로 출력
			hello (html상 일반 텍스트)
	<%--	}
	--%>
	<%-- 0/0 --%>
	
	<%-- 서블릿버젼 --%> <br />
	서버 : <%= application.getServerInfo() %> <br />
	서블릿 : <%= application.getMajorVersion() %> . <%= application.getMinorVersion() %> <br />
	jsp : <%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>
	

</body>
</html>