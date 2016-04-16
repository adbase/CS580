<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link type="text/css" href="views/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="views/css/index.css">
<link rel="stylesheet"  type="text/css" href="views/css/handsontable.full.min.css">

<script src="views/js/angular.js"></script>
<script src="views/js/angular-ui-router.js"></script>
<script src="views/js/ui-bootstrap-tpls.js"></script>
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="views/js/bootstrap.min.js"></script>
<script src="views/js/router/t1.js"></script>
<script src="views/js/handsontable.full.js"></script>
<script src="views/js/ngHandsontable.js"></script>


<!-- controllers -->
<script src="views/js/controller/t1Controller.js"></script>


<!-- services -->
<script src="views/js/service/TripService.js"></script>



</head>
<body>
	<div class="container-fluid" data-ng-app="myApp">
		<div class="row heightFill">
			<div class="col-xs12 col-md-2 ">
				<ul class="nav nav-sidebar navbar-default">
					<li ui-sref="add">add</li>
					<li ui-sref="search">search</li>
				</ul>
			</div>

		</div>
		<div class="col-xs-6 col-md-10 heightFill content ">
			<div ui-view></div>
		</div>
	</div>



</body>
</html>