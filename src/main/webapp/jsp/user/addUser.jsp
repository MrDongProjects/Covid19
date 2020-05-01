<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/layui/css/layui.css">
<script>
	var ctx = "${ctx}";
</script>
</head>
<body>
	<form class="layui-form" style="width: 85%;" id="auf">
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="username" id="username" class="layui-input"
					lay-verify="required" placeholder="请输入姓名" value="">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">验证码</label>
			<div class="layui-input-inline">
				<input type="password" id="password" class="layui-input"
					lay-verify="pass" placeholder="请输入验证码" name="password" value="">
			</div>
			<label class="layui-form-label">确认验证码</label>
			<div class="layui-input-inline">
				<input type="password" class="layui-input" lay-verify="repass"
					placeholder="请确认验证码" value="">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">性别</label>
			<div class=layui-input-inline">
				<input type="radio" name="sex" value="1" title="男" checked>
				<input type="radio" name="sex" value="0" title="女"> <input
					type="radio" name="sex" value="2" title="保密">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">出生日期</label>
			<div class="layui-input-inline">
				<input type="text" id="birthday" class="layui-input" name="birthday"
					   lay-verify="required" placeholder="请输入出生日期">
			</div>
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-inline">
				<input type="text" id="email" name="email" class="layui-input"
					   lay-verify="email" placeholder="请输入邮箱" value="">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">健康状况</label>
			<div class="layui-input-inline">
				<select name="roleId">
					<option value="">请选择健康状况</option>
					<option value="21">健康</option>
					<option value="22">有发烧咳嗽症状</option>
					<option value="23">其他</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">手机号</label>
			<div class="layui-input-inline">
				<input type="text" name="phone" class="layui-input"
					lay-verify="phone" placeholder="请输入手机号" value="">
			</div>
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline">
				<input type="text" name="address" class="layui-input"
					lay-verify="required" placeholder="请输入地址" value="">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">备注</label>
			<div class="layui-input-block">
				<textarea name="note" class="layui-textarea" placeholder="请输入备注"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit="" lay-filter="addUser">立即提交</button>
			</div>
		</div>
	</form>
	<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx }/js/user/addUser.js"></script>
</body>
</html>