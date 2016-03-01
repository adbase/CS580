<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div>add</div>
<div>
	<lable>id</lable>
	<input class="form-control" input-sm  ng-model="id"> </input>
</div>
<div>
	<lable>姓名</lable>
	<input class="form-control" input-sm ng-model="name"> </input>
</div>
<div>
	<lable>年龄</lable>
	<input class="form-control" input-sm ng-model="age"> </input>
</div>
<lable>孩子</lable>
<button type="button" class="btn btn-info" data-toggle="modal" ng-click="openAddChildModel()">添加孩子</button>
<table
	class="table table-striped table-bordered table-hover dataTable no-footer">
	<thead>
		<tr>
			<th>Children-id</th>
			<th>Children-name</th>
			<th>Children-age</th>
		</tr>
	</thead>
	<tbody>

		<tr ng-repeat="child in children">
			<td ng-blind="child.id">{{child.id}}</td>
			<td ng-blind="child.name">{{child.name}}</td>
			<td ng-blind="child.age">{{child.age}}</td>
		</tr>
	</tbody>
</table>


<button class="btn btn-primary" ng-click="submit()">提交</button>


