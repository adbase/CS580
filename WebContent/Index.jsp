<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>TMS</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link type="text/css" href="views/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="views/css/index.css">

<script src="views/js/angular.js"></script>
<script src="views/js/angular-ui-router.js"></script>
<script src="views/js/ui-bootstrap-tpls.js"></script>
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script src="views/js/bootstrap.min.js"></script>
<script src="views/js/bootstrap-datetimepicker.min.js"></script>
<script src="views/js/router/indexrouter.js"></script>

<!-- controllers -->
<script src="views/js/controller/TirpController.js"></script>
<script src="views/js/controller/PartnerCompanyController.js"></script>
<script src="views/js/controller/VehcileController.js"></script>
<script src="views/js/controller/GuideController.js"></script>

<!-- services -->
<script src="views/js/service/TripService.js"></script>
<script src="views/js/service/VehicleService.js"></script>
<script src="views/js/service/PartnerCompanyService.js"></script>
<script src="views/js/service/GuideService.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body data-ng-app="myApp">

	<nav class="navbar navbar-fixed-top  navbar-inverse"></nav>
	<div class="container-fluid heightFill">
		<div class="row heightFill">
			<!-- Navigation -->
			<div class="col-xs12 col-md-2 heightFill sidebar">

				<ul class="nav nav-sidebar navbar-default heightFill">
					<li ui-sref="listTrip" ><a href=""> <span class="glyphicon glyphicon-calendar"></span><span
							class="pull-center ">行程管理</span>
					</a></li>
					<li data-toggle="collapse" data-target="#partnerCompany"><a href="#"><span
							class="glyphicon glyphicon-briefcase collapsed active"></span><span
							class="pull-center">供应商管理 </span> </a>
					</li>
					 <ul class="sub-menu collapse in" id="partnerCompany">
					 	<li ui-sref="vehicleCompany"><a href="#"><span class="pull-center">车辆供应商 </span> </a></li>
					 	<li ui-sref="hotelCompany"><a href="#"><span class="pull-center">酒店供应商 </span> </a></li>
					 	<li ui-sref="flightCompany"><a href="#"><span class="pull-center">机票供应商 </span> </a></li>
					 	<li ui-sref="localCompany"><a href="#"><span class="pull-center">旅行社 </span> </a></li>
					 </ul>
							
							
					<li  ui-sref="vehicleManagement"><a href="#"><span class="glyphicon glyphicon-road"></span><span
							class="pull-center">车辆管理 </span></a></li>
					<li ui-sref="guideManagement"><a href="#"><span
							class="glyphicon glyphicon-user"></span><span class="pull-center">人员管理</span>
					</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-cog"></span><span
							class="pull-center">系统管理</span></a></li>

				</ul>
			</div>
			<!-- Content -->
			<div class="col-xs-6 col-md-10 heightFill content">
				<div ui-view></div>
			</div>
		</div>
	</div>

</body>
</html>