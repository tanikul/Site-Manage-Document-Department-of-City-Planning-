<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
  "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@tag pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ระบบสารบรรณ สำนักผังเมือง กรุงเทพมหานคร</title>
    <link href="<c:url value="/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/css/theme.css" />" rel="stylesheet">
    <link href="<c:url value="/css/font-awesome.css" />" rel="stylesheet">
    <link href="<c:url value="/css/sign-in.css" />" rel="stylesheet">
    <link href="<c:url value="/css/columnal.css" />" rel="stylesheet">
    <link href="<c:url value="/css/admin.css" />" rel="stylesheet">
    <link href="<c:url value="/css/bootstrap-select.min.css" />" rel="stylesheet">
    <script src="<c:url value="/js/jquery-1.11.2.js" />"></script>
    <script src="<c:url value="/js/bootstrap.js" />"></script>
    <script src="<c:url value="/js/bootstrap-select.min.js" />"></script>
    <script src="<c:url value="/js/respond.js" />"></script>
    <script src="<c:url value="/js/dateFormat.js" />"></script>
    <script src="<c:url value="/js/loadingoverlay.js" />"></script>
    <script src="<c:url value="/js/script.js" />"></script>
</head>
  <body>
 	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="min-height:65px;">
    <a class="navbar-brand" href="#"><img src="<c:url value="/img/HL-WebApp-2019.jpg" />"/></a>
    	
	</nav>
	<sec:authorize access="isAuthenticated()">
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		<t:header></t:header>
	</sec:authorize>
 	<div class="wrapper">
	    <div class="container">
	        <div class="row">
	           <div class="content" id="content">
	           	   <div id="loading" class="modal-loading"></div>
	               <jsp:doBody/>
	            </div>
	        </div>
	    </div>
	</div>
  </body>
</html>