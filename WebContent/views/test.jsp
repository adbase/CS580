<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">添加行程</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<form action="" name="TravllingForm" role="form">
			<div class="panel panel-default">
				<div class="panel-heading">组团社信息</div>
				<div class="panel-body">




					<div class="form-horizontal">
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*出团状态</lable>
							<div class="col-sm-3">
								<select class="form-control">
									<option>已定团</option>
									<option>未定团</option>
									<option>已结束</option>
									<option>已封帐</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*组团社</lable>
							<div class="col-sm-3">
								<select class="form-control">
									<option>途风</option>
									<option>佳辰旅游</option>
									<option>美亚</option>
									<option>JSC</option>
								</select>
							</div>
							<lable class="col-sm-2 control-label panel-lable">*发团OP</lable>
							<div class="col-sm-3">
								<select class="form-control">
									<option>Ashley</option>
									<option>Surina</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*团号</lable>
							<div class="col-sm-3">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">我社团号</p>
							</div>
							<div class="col-sm-3">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">组团社原始团号</p>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*联系人</lable>
							<div class="col-sm-3">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">我社操团人</p>
							</div>
							<lable class="col-sm-2 control-label panel-lable">*地接社</lable>
							<div class="col-sm-3">
								<select class="form-control">
									<option>洛杉矶</option>
									<option>新奥尔良</option>
									<option>纽约</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*电话</lable>
							<div class="col-sm-3">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">我社操团人</p>
							</div>
							<lable class="col-sm-2 control-label panel-lable">*地接社OP</lable>
							<div class="col-sm-3">
								<select class="form-control">
									<option>Charlie Ding 917-757-2699</option>
									<option>Mark Mu 626-202-5526</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">邮件</lable>
							<div class="col-sm-3">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">我社操团人</p>
							</div>
						</div>
					</div>
					<!-- end of form-horizontal -->








				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">行程信息</div>
				<div class="panel-body">
					<div class="form-horizontal">
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*接机牌信息</lable>
							<div class="col-sm-3">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">自定义的行程名称，如：上海曾先生一行</p>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*人数</lable>
							<div class="col-sm-1">
								<input class="form-control"> </input>
							</div>
							<lable class="col-sm-1 control-label panel-lable">人</lable>
							<lable class="col-sm-2 control-label panel-lable">*客人联系方式</lable>
							<div class="col-sm-3">
								<input class="form-control"> </input>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">
							<H5>第一段行程</H5>
							</lable>

						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*开始</lable>
							<div class="col-sm-2">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">开始日期 yyyy/mm/dd</p>
							</div>
							<div class="col-sm-2">
								<select class="form-control">
									<option>洛杉矶</option>
									<option>新奥尔良</option>
									<option>纽约</option>
								</select>
								<p class="help-block panel-lable-help">接机地</p>
							</div>
							<div class="col-sm-2">

								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">接机航班号</p>
							</div>
							<div class="col-sm-2">

								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">机场</p>
							</div>
							<div class="col-sm-2">

								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">时间</p>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*结束</lable>
							<div class="col-sm-2">
								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">结束日期 yyyy/mm/dd</p>
							</div>
							<div class="col-sm-2">
								<select class="form-control">
									<option>洛杉矶</option>
									<option>新奥尔良</option>
									<option>纽约</option>
								</select>
								<p class="help-block panel-lable-help">送机地</p>
							</div>
							<div class="col-sm-2">

								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">送机航班号</p>
							</div>
							<div class="col-sm-2">

								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">机场</p>
							</div>
							<div class="col-sm-2">

								<input class="form-control"> </input>
								<p class="help-block panel-lable-help">时间</p>
							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*票务</lable>
							<div class="col-sm-3">
								<select class="form-control">
									<option>环球影城</option>
									<option>迪士尼</option>
									<option>海洋世界</option>
								</select>
								<p class="help-block panel-lable-help">如要自定义门票名称请选择其他</p>
							</div>
							<lable class="col-sm-1 control-label panel-lable">数量</lable>
							<div class="col-sm-1">

								<input class="form-control"> </input>

							</div>
							<lable class="col-sm-1 control-label panel-lable">出票人</lable>
							<div class="col-sm-2">

								<select class="form-control">
									<option>导游垫付</option>
									<option>途风</option>
									<option>自费</option>
								</select>

							</div>
						</div>
						<div class="form-group">
							<lable class="col-sm-2 control-label panel-lable">*超时费</lable>
							<div class="col-sm-1">

								<input class="form-control"> </input>
							</div>
							<lable class="col-sm-1 control-label panel-lable">/小时</lable>

							<div class="col-sm-8">
								<div class="radio radio-inline">
									<input id="r1" type="radio" name="controls_radio"
										checked="checked"> <label for="r1" class="panel-lable">现金征收</label>
								</div>
								<div class="radio radio-inline">
									<input id="r2" type="radio" name="controls_radio"
										checked="checked"> <label for="r2" class="panel-lable">客人签单</label>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- end of panel-body -->
			</div>

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
									style="width: 185px;">车辆(车型/车号/位置)</th>
								<th class="sorting" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-label="Engine version: activate to sort column ascending"
									style="width: 149px;">客人航班</th>
								<th class="sorting" tabindex="0"
									aria-controls="dataTables-example" rowspan="1" colspan="1"
									aria-label="CSS grade: activate to sort column ascending"
									style="width: 110px;">导游</th>
							</tr>
						</thead>
						<tbody>

							<tr class="gradeA odd" role="row">
								<td class="sorting_1">12/06/2016</td>
								<td>洛杉矶接机</td>
								<td>7Van-租车 (洛杉矶</td>
								<td class="center">UA7593</td>
								<td class="center">杨帆(Ocean)</td>
							</tr>
							<tr class="gradeA even" role="row">
								<td class="sorting_1">12/07/2016</td>
								<td>洛杉矶->圣芭芭拉</td>
								<td>7Van-331 (圣芭芭拉)</td>
								<td class="center">/</td>
								<td class="center">杨帆(Ocean)</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</form>
	</div>
</div>
