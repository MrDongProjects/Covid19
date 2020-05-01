<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${ctx}/layui/css/layui.css">
<link rel="stylesheet" href="${ctx }/css/list.css" media="all" />
<link rel="stylesheet" href="${ctx }/css/font_eolqem241z66flxr.css"
	media="all" />
<script>
	var ctx = "${ctx}";
</script>
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search">
		<form class="layui-form">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" id="username" value="" placeholder="请输入用户名"
						class="layui-input search_input ">
				</div>
				<div class="layui-input-inline" style="margin-left: 10px">
					<select name="sex" class="" id="sex">
						<option value="-1">请选择性别</option>
						<option value="0">男</option>
						<option value="1">女</option>
						<option value="2">保密</option>
					</select>
				</div>
				<div class="layui-input-inline" style="margin-left: 10px">
					<select name="status" class="" id="status">
						<option value="-1">请选择体温</option>
						<option value="0">正常</option>
						<option value="1">异常</option>
					</select>
				</div>
				<div class="layui-input-inline" style="margin-left: 10px">
					<select name="roleId" class="" id="roleId">
						<option value="0">请选择健康状况</option>
						<option value="21">健康</option>
						<option value="22">有发烧咳嗽症状</option>
						<option value="23">其他</option>
					</select>
				</div>
				<div class="layui-input-inline" style="margin-left: 10px">
					<div class="layui-inline">
						<input type="text" id="birthdayStart" class="layui-input"
							name="birthdayStart" placeholder="出生日期(开始)" value="">
					</div>
					-
					<div class="layui-inline">
						<input type="text" id="birthdayEnd" class="layui-input"
							name="birthdayEnd" placeholder="出生日期(结束)" value="">
					</div>
				</div>
			</div>
			<div style="margin-top: 1%">
				<div class="layui-inline">
					<input type="text" id="createTimeStart" class="layui-input"
						name="createTimeStart" placeholder="外出时间(开始)" value="">
				</div>
				-
				<div class="layui-inline">
					<input type="text" id="createTimeEnd" class="layui-input"
						name="createTimeEnd" placeholder="外出时间(结束)" value="">
				</div>
				<a style="margin-left: 10px" class="layui-btn search_btn" lay-submit="" data-type="search"
					lay-filter="search">查询</a>
				<div class="layui-inline" style="margin-left: 10px">
					<a class="layui-btn layui-btn-normal userAdd_btn">添加用户</a>
				</div>
			</div>
		</form>
	</blockquote>
	<div class="layui-form">
		<table id="userList" lay-filter="userList"></table>
	</div>
	<script type="text/html" id="sexTpl">
 		 {{#  if(d.sex == 0){ }}
   			 <span style="color: #F581B1;">男</span>
  		{{#  } else if(d.sex == 1){ }}
   		 	<span style="color: #1e9fff;">女</span>
		{{#  } else{ }}
   		 	<span style="color: #08f55f;">保密</span>
  		{{#  } }}
	</script>
	<script type="text/html" id="statusTpl">
		<input type="checkbox" name="status" value="{{d.id}}" lay-skin="switch" lay-text="异常|正常" lay-filter="statusSwitch" {{ d.status == 1 ? 'checked' : '' }}>
	</script>
	<script type="text/html" id="levelTpl">
		{{#  if(d.roleId == 21){ }}
   			 <span style="color: green;">健康</span>
		{{#  } else if(d.roleId == 22){ }}
   		 	<span style="color: red;">有发烧咳嗽症状</span>
		{{#  } else if(d.roleId == 23){ }}
   		 	<span style="color: yellow;">其他</span>
  		{{#  } }}
	</script>
	<script type="text/html" id="barDemo">
		<a class="layui-btn layui-btn-sm" lay-event="edit">
            <i class="layui-icon">&#xe642;</i>
        </a>
        <a class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">
            <i class="layui-icon">&#xe640;</i>
        </a>
    </script>
	<script type="text/javascript" src="${ctx }/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx }/js/user/userList.js"></script>
</body>

</html>
