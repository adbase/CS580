<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="modal-header">添加供应商</div>
<div class="modal-body">
<input type="hidden" ng-model="company.id"> </input>
<input type="hidden" ng-model="company.type"> </input>
	<lable>名字</lable>
	<div>
		<input type="text" ng-model="company.name"> </input>
	</div>
	<lable>联系人</lable>
	<div>
		<input type="text" ng-model="company.contact"> </input>
	</div>
	<lable>电话</lable>
	<div>
		<input type="text" ng-model="company.phone"> </input>
	</div>
	<lable>地址</lable>
	<div>
		<input type="text" ng-model="company.address"> </input>
	</div>
	<lable>备注</lable>
	<div>
		<input type="text" ng-model="company.comment"> </input>
	</div>
</div>
<div class="modal-footer">
	
		<button class="btn btn-primary" ng-click="updateCompany()">OK</button>
		<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
</div>