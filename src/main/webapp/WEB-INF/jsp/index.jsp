<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
    	<title>Plateaux Repas</title>

    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    	<meta http-equiv="X-UA-Compatible" content="IE=edge">

    	<meta name="viewport" content="width=device-width, initial-scale=1">
    
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/style.css" rel="stylesheet" />

	</head>
	<body>
		<div class="container">
			<nav class="navbar navbar-inverse">
        		<div class="container-fluid">
          			<ul class="nav navbar-nav">
            			<li><a href="/">Accueil</a><l/i>
            			<li><a href="/newPlateau">Nouveau Plateau</a></li>
          			</ul>
        		</div>
      		</nav>
		

			<div class="table-responsive">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Libellé</th>
							<th>Description</th>
							<th>Modifier</th>
							<th>Supprimer</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="plateau" items="${plateaux}">
							<tr>
								<td>${plateau.id}</td>
								<td>${plateau.lib}</td>
								<td>${plateau.description}</td>
								<td><a href="/select-plateau?id=${plateau.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
								<td><a href="/delete-plateau?id=${plateau.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>


		</div>
		<script src="static/js/jquery.min.js"></script>
		<script src="static/js/bootstrap.min.js></script>
	</body>
</html>
