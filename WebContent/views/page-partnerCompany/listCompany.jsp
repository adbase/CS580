<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header" ng-blind="type">{{type}}供应商管理</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<button type="button" class="btn btn-primary"
			ng-click="openAddModel()">添加供应商</button>

		<table class="table table-condensed table-bordered table-striped">
			<thead>
				<tr>

					<td>公司名</td>
					<td>联系人</td>
					<td>电话</td>
					<td>公司地址</td>
					<td>备注</td>
					<td>编辑</td>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="company in companies">
					<td ng-blind="company.name">{{company.name}}</td>
					<td ng-blind="company.contact">{{company.contact}}</td>
					<td ng-blind="company.phone">{{company.phone}}</td>
					<td ng-blind="company.address">{{company.address}}</td>
					<td ng-blind="company.comment">{{company.comment}}</td>
					<td><button type="button" ng-click="edit(company.id)"
							class="btn btn-success custom-width">Edit</button>
						<button type="button" ng-click="remove(company.id)"
							class="btn btn-danger custom-width">Remove</button></td>

				</tr>
			</tbody>
		</table>
	</div>
</div>