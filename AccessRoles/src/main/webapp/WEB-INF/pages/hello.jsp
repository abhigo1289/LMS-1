<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	HttpSession ses=request.getSession(false);
	String empid=(String)ses.getAttribute("empid");
	if(empid.equals("anonymousUser"))
	{
		response.sendRedirect("/LeaveMgt/login");
	}
	
%>
<html>
<body>
<h1>hello</h1>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	<h1> from session ${empid}</h1>
	<sec:authorize access="hasRole('ROLE_USER')">
		<!-- For login user -->
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
		<script>
			function formSubmit() {
				document.getElementById("logoutForm").submit();
			}
		</script>

		
			<h2>
				 <a	href="javascript:formSubmit()"> Logout</a>
			</h2>
		


	</sec:authorize>
</body>
</html>