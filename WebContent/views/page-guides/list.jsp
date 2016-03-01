<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header" ng-blind="type"> 导游管理</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<button type="button" class="btn btn-primary"
			ng-click="openAddModel()">添加导游</button>

		<table class="table table-condensed table-bordered table-striped">
			<thead>
				<tr>

					<td>中文姓名</td>
					<td>英文姓名</td>				
					<td>电话</td>
					<td>所属公司</td>
					<td>编辑</td>
					
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="value in guidesshow">
					<td ng-blind="value.name_chn">{{value.name_chn}}</td>
					<td ng-blind="value.name_eng">{{value.name_eng}}</td>
					<td ng-blind="value.phone">{{value.phone}}</td>
					<td ng-blind="value.companyid">{{value.companyid}}</td>
					<td><button type="button" ng-click="edit(value.id)"
							class="btn btn-success custom-width">Edit</button>
						<button type="button" ng-click="remove(value.id)"
							class="btn btn-danger custom-width">Remove</button></td>

				</tr>
			</tbody>
		</table>
	</div>
</div>