<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>TMS</title>
<link type="text/css" href="views/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="views/css/index.css">

<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="views/js/bootstrap.min.js"></script>
<script src="views/js/index.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<nav class="navbar navbar-fixed-top  navbar-inverse"></nav>
	<div class="container-fluid heightFill">
		<div class="row heightFill">
			<!-- Navigation -->
			<div class="col-xs12 col-md-2 heightFill sidebar">

				<ul class="nav nav-sidebar navbar-default heightFill">
					<li><a href="javascript:void(0)" onclick="loadXMLDoc('test')"> <span
							class="glyphicon glyphicon-calendar"></span><span
							class="pull-center ">行程管理</span></a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-briefcase"></span><span
							class="pull-center">供应商管理 </span> </a></li>
					<li><a href="#"><span class="glyphicon glyphicon-road"></span><span
							class="pull-center">车辆管理 </span></a></li>
					<li><a href="javascript:void(0)" onclick="loadXMLDoc('usermange')"><span
							class="glyphicon glyphicon-user"></span><span
							class="pull-center">用户管理</span> </a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-cog"></span><span
							class="pull-center">系统管理</span></a></li>

				</ul>
			</div>
			<!-- Content -->
			<div class="col-xs-6 col-md-10 heightFill content">
				<div id="myDiv" class=""></div>
			</div>
		</div>
	</div>

</body>
</html>