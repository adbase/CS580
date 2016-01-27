<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">用户管理</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">添加用户</div>
			<div class="panel-body">
				<form action="" name="userForm">
				<label>id</label> <input type="text" name="id"
						class="form-control"> 
					<label>用户名</label> <input type="text" name="userName"
						class="form-control"> <label>年龄</label> <input type="text"
						name="age" class="form-control">
					<button type="submit" class="btn btn-default" onclick="addUser()">添加</button>
				</form>
			</div>
		</div>
	</div>
</div>
