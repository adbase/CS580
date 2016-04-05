<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">添加行程</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<form name="TravllingForm">
			<div class="panel panel-default">
				<div class="panel-heading">组团社信息</div>
				<div class="panel-body">
					<div class="form-horizontal">
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*状态</lable>
							<div class="col-sm-3">
								<select class="form-control" ng-model="trip.status">
									<option value="已定团">已定团</option>
									<option value="未定团">未定团</option>
									<option value="已结束">已结束</option>
									<option value="已封帐">已封帐</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*团组名称</lable>
							<div class="col-sm-3">
								<input type="text" class="form-control input-sm"
									ng-model="trip.name"> </input>
								<p class="help-block panel-lable-help">如：洛杉矶1日</p>
							</div>
							<lable class="col-sm-2 control-label panel-lable">*团号</lable>
							<div class="col-sm-3">
								<input type="text" class="form-control input-sm"
									ng-model="trip.id"> </input>
								<p class="help-block panel-lable-help">我社团号</p>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*我团OP</lable>
							<div class="col-sm-3">
								<select class="form-control" ng-model="trip.contact"
									ng-options="m.id as m.name_chn for m in guides"
									ng-change="updatePhone()">
								</select>
							</div>
							<lable class="col-sm-2 control-label panel-lable">OP联系电话</lable>
							<div class="col-sm-3">
								<input type="text" class="form-control input-sm"
									ng-model="trip.phone"> </input>
								<p class="help-block panel-lable-help"></p>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*组团社名称</lable>
							<div class="col-sm-3">
								<select class="form-control"
									ng-model="trip.startpartnercompanyid"
									ng-options="m.id as m.name for m in localcompany"
									ng-change="updateLocalOP()">


								</select>
							</div>
							<lable class="col-sm-2 control-label panel-lable">*组团社团号</lable>
							<div class="col-sm-3">
								<input type="text" class="form-control input-sm"> </input>
								<p class="help-block panel-lable-help"
									ng-model="trip.partner_team_id">组团社原始团号</p>
							</div>

						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*组团社OP</lable>
							<div class="col-sm-3">
								<select class="form-control"
									ng-model="trip.startpartnercompanyopid"
									ng-options="m.id as m.name_chn for m in localguides"
									ng-change="updateLocalOPname()">


								</select>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*地接社名称</lable>
							<div class="col-sm-3">
								<select class="form-control"
									ng-model="trip.localPartnercompanyid"
									ng-options="m.id as m.name for m in localcompany1"
									ng-change="updateLocalOP2()">


								</select>
							</div>
							<lable class="col-sm-2 control-label panel-lable">*地接社OP</lable>
							<div class="col-sm-3">
								<select class="form-control"
									ng-model="trip.localPartnercompanyopid"
									ng-options="m.id as m.name_chn for m in localguides1"
									ng-change="updateLocalOPname2()">


								</select>
							</div>

						</div>
					</div>
				</div>
				<!-- end of panel body -->
			</div>
			<!-- end of panel -->
			<div class="panel panel-default">
				<div class="panel-heading">行程信息</div>
				<div class="panel-body">
					<div class="form-horizontal">
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*人数</lable>
							<div class="col-sm-1">
								<input class="form-control input-sm" ng-model="trip.num_people">
								</input>
							</div>
							<lable class="col-sm-1 control-label panel-lable">人</lable>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*开始时间</lable>
							<div class="col-sm-3">
								<input class="form-control input-sm" ng-model="trip.start_date">
								</input>
								<p class="help-block panel-lable-help">格式 yyyy/mm/dd</p>
							</div>
							<lable class="col-sm-2 control-label panel-lable">*结束时间</lable>
							<div class="col-sm-3">
								<input class="form-control input-sm" ng-model="trip.end_date">
								</input>
								<p class="help-block panel-lable-help">格式 yyyy/mm/dd</p>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*超时费</lable>
							<div class="col-sm-1">
								<input class="form-control input-sm"
									ng-model="trip.overtime_rate"> </input>
							</div>
							<lable class="col-sm-1 control-label panel-lable">/小时</lable>
							<div class="col-sm-8">
								<div class="radio radio-inline">
									<input id="r1" type="radio" name="controls_radio"
										checked="checked" ng-model="trip.overtime_payment_type"
										value="现金征收"> <label for="r1" class="panel-lable">现金征收</label>
								</div>
								<div class="radio radio-inline">
									<input id="r2" type="radio" name="controls_radio"
										checked="checked" ng-model="trip.overtime_payment_type"
										value="客人"> <label for="r2" class="panel-lable">客人签单</label>
								</div>
							</div>

						</div>
					</div>
					<!-- end of form-horizontal -->
				</div>
				<!-- end of panel-body -->
			</div>
			<!-- end of panel-->

			<div class="panel panel-default">
				<div class="panel-heading">日程表</div>
				<div class="panel-body">
					<table
						class="table table-striped table-bordered table-hover dataTable no-footer"
						id="dataTables-example" role="grid"
						aria-describedby="dataTables-example_info">
						<thead>
							<tr role="row">
								<th class="sorting_asc" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-sort="ascending"
									aria-label="Rendering engine: activate to sort column descending"
									style="width: 172px;">日期</th>
								<th class="sorting" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-label="Browser: activate to sort column ascending"
									style="width: 204px;">行程</th>
								<th class="sorting" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-label="Platform(s): activate to sort column ascending"
									style="width: 185px;">车辆</th>
								<th class="sorting" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-label="Engine version: activate to sort column ascending"
									style="width: 149px;">客人酒店</th>
								<th class="sorting" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-label="CSS grade: activate to sort column ascending"
									style="width: 110px;">导游</th>
								<th class="sorting" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-label="CSS grade: activate to sort column ascending"
									style="width: 110px;">编辑</th>
						</thead>
						<tbody>

							<tr class="gradeA odd" role="row" ng-repeat="value in tripsteps">
								<td class="sorting_1"><span ng-bind="value.date"></span></td>
								<td><span ng-bind="value.trip_plan_location">{{value.trip_plan_location}}</span></td>
								<td><span ng-bind="value.vehicle_type">{{}}</span>/<span
									ng-bind="value.vehicle_location">{{value.vehicle_location}}</span></td>
								<td class="center"><span ng-bind="value.guide_room_by">{{value.guide_room_by}}</span></td>
								<td class="center"><span ng-bind="value.guide_name">{{value.guide_name}}</span></td>
								<td><button type="button" ng-click="edit(value.id)"
										class="btn btn-success custom-width">Edit</button>
									<button type="button" ng-click="remove(value.id)"
										class="btn btn-danger custom-width">Remove</button></td>
							</tr>

						</tbody>
					</table>
					<button type="button" class="btn btn-info" data-toggle="modal"
						ng-click="addTripStepModel()">添加日程</button>




				</div>
				<!-- end of panel-body -->
			</div>
			<!-- end of panel-->

			<button class="btn btn-primary" ng-click="submit()">提交</button>
		</form>
	</div>
	<!-- end col-lg-12 -->
</div>
<!-- end of row  -->