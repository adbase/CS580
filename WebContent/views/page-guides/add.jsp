<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="modal-header">添加车辆</div>
<div class="modal-body">
<input type="hidden" ng-model="guide.id"> </input>
	<input type="hidden" ng-model="guide.id"> </input>
	<lable>中文姓名</lable>
	<div>
		<input type="text" ng-model="guide.name_chn"> </input>
	</div>
	<lable>英文姓名</lable>
	<div>
		<input type="text" ng-model="guide.name_eng"> </input>
	</div>
	<lable>所属公司</lable>
	<div>
		<select ng-model="guide.companyid" ng-options="m.id as m.name for m in partners">
    		<option value=""></option>
		</select>
	</div>
	<lable>电话</lable>
	<div>
		<input type="text" ng-model="guide.phone"> </input>
	</div>
</div>
<div class="modal-footer">
	
		<button class="btn btn-primary" ng-click="add()">OK</button>
		<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
</div>