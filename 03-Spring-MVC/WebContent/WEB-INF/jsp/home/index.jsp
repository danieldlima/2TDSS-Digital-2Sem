<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<tags:template titulo="">
	
	<jsp:attribute name="scripts">			
		<script src="<c:url value="/resources/js/bootstrap.min.js"/>" ></script>		
	</jsp:attribute>
	
	<jsp:body>

		<%-- Tudo que estiver aqui vai para o <jsp:doBody/> do template --%>
		<h1>Página inicial</h1>
	
	</jsp:body>
	
</tags:template>