<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>TMS</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />

<link type="text/css" href="views/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="views/css/index.css">
<link rel="stylesheet"  type="text/css" href="views/css/animate.css">
<link rel="stylesheet"  type="text/css" href="views/css/handsontable.full.min.css">

<script src="views/js/angular.js"></script>
<script src="views/js/angular-ui-router.js"></script>
<script src="views/js/ui-bootstrap-tpls.js"></script>
<script src="views/js//jquery-2.2.3.min.js"></script>
<script src="views/js/bootstrap.min.js"></script>
<script src="views/js/router/indexrouter.js"></script>
<script src="views/js/handsontable.full.js"></script>
<script src="views/js/ngHandsontable.js"></script>


<!-- controllers -->
<script src="views/js/controller/TirpController.js"></script>
<script src="views/js/controller/PartnerCompanyController.js"></script>
<script src="views/js/controller/VehcileController.js"></script>
<script src="views/js/controller/GuideController.js"></script>

<!-- services -->
<script src="views/js/service/TripService.js"></script>



<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body data-ng-app="myApp">

	<div class="navbar navbar-fixed-top header">
		 <div class="container">
	        <div class="row">
	           <div class="col-md-5">
					
				</div>
	           <div class="col-md-5">
	           		
	           </div>
	           <div class="col-md-2">
	           		<div class="navbar navbar-inverse" role="banner">
	                  <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
	                    <ul class="nav navbar-nav">
	                      <li class="dropdown">
	                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">我的账户 <b class="caret"></b></a>
	                        <ul class="dropdown-menu animated fadeInUp">
	                          <li><a href="">账户</a></li>
	                          <li><a href="">登出</a></li>
	                        </ul>
	                      </li>
	                    </ul>
	                  </nav>
	              </div>
	           </div>
	        </div>
	     </div>
	</div>
	<div class="container-fluid heightFill">
		<div class="row heightFill">
			<!-- Navigation -->
			<div class="col-xs12 col-md-2 heightFill sidebar">

				<ul class="nav nav-sidebar navbar-default heightFill">
					<li ui-sref="listTrip" ><a href=""> <i class="glyphicon glyphicon-calendar"></i><span
							class="pull-center ">行程管理</span>
					</a></li>
					<li data-toggle="collapse" data-target="#partnerCompany"><a href="#"><i
							class="glyphicon glyphicon-briefcase collapsed active"></i><span
							class="pull-center">供应商管理 </span> </a>
					
						 <ul class="sub-menu collapse" id="partnerCompany">
						 	<li ui-sref="vehicleCompany"><a href="#"><span class="pull-center">车辆供应商 </span> </a></li>
						 	<li ui-sref="hotelCompany"><a href="#"><span class="pull-center">酒店供应商 </span> </a></li>
						 	<li ui-sref="flightCompany"><a href="#"><span class="pull-center">机票供应商 </span> </a></li>
						 	<li ui-sref="localCompany"><a href="#"><span class="pull-center">旅行社 </span> </a></li>
						 </ul>
					</li>	
							
					<li data-toggle="collapse" data-target="#vehicle"><a href="#"><i
							class="glyphicon glyphicon-road collapsed active"></i><span
							class="pull-center">车辆管理 </span> </a>
							<ul class="sub-menu collapse" id="vehicle">
								<li  ui-sref="vehicleManagement">
									<a href="#">
									</i><span class="pull-center">车辆信息管理 </span></a>
								</li>
							</ul>
					</li>		
							
					
					<li ui-sref="guideManagement"><a href="#"><i
							class="glyphicon glyphicon-user"></i><span class="pull-center">人员管理</span>
					</a></li>
					<li><a href="#"><i class="glyphicon glyphicon-cog"></i><span
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