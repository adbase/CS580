<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<div class="modal-header">孩子</div>
<div class="modal-body">
	<lable>id</lable>
	<div>
		<input type="text" ng-model="child.id"> </input>
	</div>
	<lable>年龄</lable>
	<div>
		<input type="text" ng-model="child.age"> </input>
	</div>
	<lable>名字</lable>
	<div>
		<input type="text" ng-model="child.name"> </input>
	</div>
</div>
<div class="modal-footer">
	
		<button class="btn btn-primary" ng-click="addChild()">OK</button>
		<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
</div>
