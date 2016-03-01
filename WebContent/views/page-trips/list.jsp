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
					<td>状态</td>
					<td>团号</td>
					<td>操团人</td>
					<td>人数</td>
					<td>开始/结束 时间</td>
					<td>发团社/OP</td>
					<td>地接社/OP</td>
					<td>编辑</td>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="trip in trips">
					<td ng-blind="trip.status">{{trip.status}}</td>
					<td ng-blind="trip.id">{{trip.id}}</td>
					<td ng-blind="trip.name">{{trip.name}}</td>
					<td ng-blind="trip.num_people">{{trip.num_people}}</td>
					<td ng-blind="trip.start_date">{{trip.start_date+'~'+trip.end_date}}</td>
					<td ng-blind="trip.startpartnercompanyid">{{trip.startpartnercompanyname+'/'+trip.startpartnercompanyopname}}</td>
					<td ng-blind="trip.localPartnercompanyid">{{trip.localPartnercompanyname +'/'+trip.localPartnercompanyopname}}</td>
					<td><button type="button" ng-click="edit(value.id)"
							class="btn btn-success custom-width">Edit</button>
						<button type="button" ng-click="remove(value.id)"
							class="btn btn-danger custom-width">Remove</button></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>