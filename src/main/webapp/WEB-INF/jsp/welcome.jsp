<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <nav class="navbar navbar-inverse">
      
      <div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">simple web app</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/">Home</a></li>
					<li><a href="/cytoscape">Cytoscape</a></li>
				</ul>
			</div>
		</div>

      </nav>
      
 <div class="container">

		<div class="starter-template">
			<h1>${titre}</h1>
			<h2>${message}</h2>
		</div>

	</div>
	
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      
</body>
</html>