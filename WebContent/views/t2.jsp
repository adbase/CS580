<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div>search</div>

<table class="table table-striped table-bordered table-hover dataTable no-footer">
	<thead>
		<tr>
			<th>id</th>
			<th>name</th>
			<th>age</th>
			<th>edit</th>
		</tr>
	</thead>
	<tbody>

		<tr ng-repeat="user in users">
			<td ng-model="user.id">{{user.id}}</td>
			<td ng-model="user.userName">{{user.userName}}</td>
			<td ng-model="user.age">{{user.age}}</td>
			<td></td>
		</tr>
	</tbody>
</table>