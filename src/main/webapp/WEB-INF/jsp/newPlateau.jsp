<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
    	<title>Plateaux Repas</title>

    	<meta charset="utf-8">

    	<meta http-equiv="X-UA-Compatible" content="IE=edge">

    	<meta name="viewport" content="width=device-width, initial-scale=1">
    
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/style.css" rel="stylesheet" />

	</head>
	<body>
	<div class ="container">
		<div role="navigation">
			<nav class="navbar navbar-inverse">
        		<div class="container-fluid">
          			<ul class="nav navbar-nav">
            			<li><a href="/">Accueil</a><l/i>
            			<li><a href="/newPlateau">Nouveau Plateau</a></li>
          			</ul>
        		</div>
      		</nav>
      		
      		<div>
				<form class="form-horizontal" method="POST" action="/save-plateau">
					<input type="hidden" name="id" value="${selected.id}"/>
						<div class="form-group">
							<label class="control-label col-md-3">Libellé</label>
							<div class="col-md-5">
								<input type="text" class="form-control" name="lib" value="${selected.lib}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Description</label>
							<div class="col-md-5">
								<input type="text" class="form-control" name="Description" value="${selected.description}"/>
							</div>
						</div>
				
						<div class="form-group col-offset-6">
							<input type="submit" class="btn btn-primary" value="enregistrer" />
						</div>
				</form>

			</div>
		</div>
	</div>
		<script src="static/js/jquery.min.js"></script>
		<script src="static/js/bootstrap.min.js></script>
	</body>
</html>