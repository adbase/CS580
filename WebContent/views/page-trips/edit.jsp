<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="modal-header">添加车辆</div>
<div class="modal-body">
	<div class="form-horizontal">
		<div class="form-group">
			<input type="hidden" ng-model="tripstep.id" />
			<lable class="col-sm-2 control-label panel-lable">*日期</lable>
			<div class="col-sm-3">
				<input class="form-control" ng-model="tripstep.date"> </input>
			</div>
		</div>
		<div class="form-group">
			<lable class="col-sm-2 control-label panel-lable">*行程地点</lable>
			<div class="col-sm-3">
				<input class="form-control" ng-model="tripstep.trip_plan_location">
				</input>
			</div>

		</div>
		<div class="form-group">
			<lable class="col-sm-2 control-label panel-lable">*行程类型</lable>
			<div class="col-sm-10">
				<div class="radio radio-inline">
					<input id="r1" type="radio" name="controls_radio" checked="checked"
						ng-model="tripstep.type" value="一日"> <label for="r1"
						class="panel-lable">一日</label>
				</div>
				<div class="radio radio-inline">
					<input id="r2" type="radio" name="controls_radio" checked="checked"
						ng-model="tripstep.type" value="往返"> <label for="r2"
						class="panel-lable">往返</label>
				</div>
				<div class="radio radio-inline">
					<input id="r2" type="radio" name="controls_radio" checked="checked"
						ng-model="tripstep.type" value="接机"> <label for="r2"
						class="panel-lable">接机</label>
				</div>
				<div class="radio radio-inline">
					<input id="r2" type="radio" name="controls_radio" checked="checked"
						ng-model="tripstep.type" value="送机"> <label for="r2"
						class="panel-lable">送机</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<lable class="col-sm-2 control-label panel-lable">*车位置</lable>
			<div class="col-sm-3">
				<input class="form-control" ng-model="tripstep.vehicle_location">
				</input>
			</div>
			<lable class="col-sm-2 control-label panel-lable">*车类型</lable>
			<div class="col-sm-3">
				<select class="form-control" ng-model="tripstep.vehicle_type"
					ng-options="m.v_type as m.v_type for m in vehicles">
				</select>
			</div>
		</div>
		<div class="form-group">
			<lable class="col-sm-2 control-label panel-lable">*客人酒店名称</lable>
			<div class="col-sm-3">
				<select class="form-control" ng-model="tripstep.guide_room_by"
					ng-options="m.name as m.name for m in hotels">
				</select>
			</div>
			<lable class="col-sm-2 control-label panel-lable">*客人房间</lable>
			<div class="col-sm-3">
				<input class="form-control" ng-model="tripstep.guide_room">
				</input>
			</div>
		</div>
		<div class="form-group">

			<lable class="col-sm-2 control-label panel-lable">*客人房提供</lable>
			<div class="col-sm-3">
				<input class="form-control" ng-model="tripstep.guide_room_by">
				</input>
			</div>
		</div>
		<div class="form-group">
			<lable class="col-sm-2 control-label panel-lable">*导游</lable>
			<div class="col-sm-3">
				<select class="form-control" ng-model="tripstep.guide_id"
					ng-options="m.id as m.name_chn for m in guides" ng-change="updateGuideName()">
				</select>
			</div>

		</div>
		<div class="form-group">
			<lable class="col-sm-2 control-label panel-lable">*导游房提供</lable>
			<div class="col-sm-3">
				<select class="form-control" ng-model="tripstep.guide_id"
					ng-options="m.id as m.name for m in hotels">
					<option value="自理">自理</option>
				</select>
			</div>
			<lable class="col-sm-2 control-label panel-lable">*导游房间</lable>
			<div class="col-sm-3">
				<input class="form-control" ng-model="tripstep.guests_room_by">
				</input>
			</div>
		</div>
		<div class="form-group">
			<lable class="col-sm-2 control-label panel-lable">早餐</lable>
			<div class="col-sm-2">
				<select class="form-control" ng-model="tripstep.breakfast">
					<option value="自理">自理</option>
					<option value="含餐">含餐</option>
					<option value="未知">未知</option>
					<option value="部分含">部分含</option>

				</select>
			</div>
			<lable class="col-sm-2 control-label panel-lable">午餐</lable>
			<div class="col-sm-2">
				<select class="form-control" ng-model="tripstep.lunch">
					<option value="自理">自理</option>
					<option value="含餐">含餐</option>
					<option value="未知">未知</option>
					<option value="部分含">部分含</option>

				</select>
			</div>
			<lable class="col-sm-2 control-label panel-lable">晚餐</lable>
			<div class="col-sm-2">
				<select class="form-control" ng-model="tripstep.dinner">
					<option value="自理">自理</option>
					<option value="含餐">含餐</option>
					<option value="未知">未知</option>
					<option value="部分含">部分含</option>

				</select>
			</div>
		</div>

	</div>
</div>
<div class="modal-footer">
	
		<button class="btn btn-primary" ng-click="edit()">OK</button>
		<button class="btn btn-warning" ng-click="cancel()">Cancel</button>
</div>