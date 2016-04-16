<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">行程搜索</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<button type="button" class="btn btn-primary" ui-sref="addTrip">添加行程</button>
	
		<table class="table table-condensed table-bordered table-striped">
			<thead>
				<tr>
					<td>Status</td>
					<td>Upper OP</td>
					<td>Tour Name</td>
					<td>No.</td>
					<td>Start On</td>
					<td>Start Loc</td>
					<td>End On</td>
					<td>End Loc</td>
					<td>Rout</td>
					<td>Schedule</td>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="trip in trips">
					<td ng-blind="trip.status">{{trip.status}}</td>
					<td ng-blind="trip.upper_op">{{trip.upper_op}}</td>
					<td ng-blind="trip.tour_name">{{trip.tour_name}}</td>
					<td ng-blind="trip.num_people">{{trip.num_people}}</td>
					<td ng-blind="trip.start_date">{{trip.start_date}}</td>
					<td ng-blind="trip.start_Loc">{{trip.start_Loc}}</td>
					<td ng-blind="trip.end_date">{{trip.end_date}}</td>
					<td ng-blind="trip.end_Loc">{{trip.end_Loc}}</td>
					<td>
						<table class="table table-condensed table-bordered table-striped">
							<thead>
								<tr>
									<td>Date</td>
									<td>Rout</td>
									<td>TG</td>
									<td>Locatoin</td>
									<td>ZipCode</td>
									<td>Ve Ty</td>
									<td>Ve No.</td>
								</tr>
							</thead>
							<tbody>
								<tr ng-repeat="tripstep in tripsteps">
									<td ng-blind="tripstep.date">{{tripstep.date}}</td>
									<td ng-blind="tripstep.route">{{tripstep.route}}</td>
									<td ng-blind="tripstep.tg">{{tripstep.tg}}</td>
									<td ng-blind="tripstep.location">{{tripstep.location}}</td>
									<td ng-blind="tripstep.zipcode">{{tripstep.zipcode}}</td>
									<td ng-blind="tripstep.vety">{{tripstep.vety}}</td>
									<td ng-blind="tripstep.veno">{{tripstep.veno}}</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>	
								</tr>
							</tbody>
						</table>
					</td>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</tr>
			</tbody>
		</table>
	</div>
</div>