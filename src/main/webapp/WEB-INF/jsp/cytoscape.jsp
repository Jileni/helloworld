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
<title>Cytoscape</title>
<script type="text/javascript" src="webjars/cytoscape/3.2.5/dist/cytoscape.min.js"></script>

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
			<h1>Mon premier graphe cytoscape</h1>
		</div>

	</div>
			<div id="cy"></div>
   <script>
      var cy = cytoscape({
        container: document.getElementById('cy'),
        elements: [
        	  { data: { id: 'a' } },
        	  { data: { id: 'b' } },
        	  { data: { id: 'c' } },
        	  { data: { id: 'd' } },
        	  { data: { id: 'e' } },
        	  { data: { id: 'f' } },
        	  
        	  {
        	    data: {
        	      id: 'ab',
        	      source: 'a',
        	      target: 'b'
        	    }
        	  },
        	  {
        	    data: {
        	      id: 'cd',
        	      source: 'c',
        	      target: 'd'
        	    }
        	  },
        	  {
        	    data: {
        	      id: 'ef',
        	      source: 'e',
        	      target: 'f'
        	    }
        	  },
        	  {
        	    data: {
        	      id: 'ac',
        	      source: 'a',
        	      target: 'c'
        	    }
        	  },
        	  {
        	    data: {
        	      id: 'be',
        	      source: 'b',
        	      target: 'e'
        	    }
        	  }
        	],
          
          style: [
              {
                  selector: 'node',
                  style: {
                      shape: 'hexagon',
                      'background-color': 'red',
                      label: 'data(id)'
                      
                  }
              }]      
      });
    </script>    
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      </body>
</html>