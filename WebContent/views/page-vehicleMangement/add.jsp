<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="modal-header">添加车辆</div>
<div class="modal-body">
<input type="hidden" ng-model="vehicle.id"> </input>
	<lable>车量型号</lable>
	<div>
		<input type="text" ng-model="vehicle.v_type"> </input>
	</div>
	<lable>所属公司</lable>
	<div>
		<select ng-model="vehicle.companyid" ng-options="m.id as m.name for m in partners">
    		<option value="">-- 请选择 --</option>
		</select>
	</div>
	<lable>备注</lable>
	<div>
		<input type="text" ng-model="vehicle.comment"> </input>
	</div>
</div>
<div class="modal-footer">
	
		<button class="btn btn-primary" ng-click="add()">OK</button>
		<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
</div>