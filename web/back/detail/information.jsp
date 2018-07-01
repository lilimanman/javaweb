

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><!-- 包含公共的JSP代码片段 -->
<title>身份认证</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>

<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 项目列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>



	<div id="QueryArea">
		<form action="/staff/staffList.action" method="post">
			<input type="submit" value="搜索">
		</form>
	</div>

<div id="MainArea">
	<form action="/staff/staffUpdate.action" method="post">

		<table class="MainArea_Content" cellspacing="0" cellpadding="0">

			<thead>
			<tr align="center" valign="middle" id="TableTitle">
				<td align="center">员工号</td>
				<td align="center">员工姓名</td>
				<td align="center">基本工资</td>
				<td align="center">加班薪资</td>
				<td align="center">操作</td>
			</tr>
			</thead>

			<tbody id="TableData">
			<c:forEach items="${applicationScope.staffs}" var="staff">
				<tr class="TableDetail1">
					<td align="center" name="sid">${staff.sid}</td>
					<td align="center">${staff.sName}</td>
					<td align="center">${staff.sBase}</td>
					<td align="center">${staff.sAdd}</td>
					<td align="center"><a href="/staff/staffDelete.action?sid=${staff.sid}" onclick="delConfirm()" class="FunctionButton">删除</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</form>
</div>

<div id="TableTail" align="center">
	<div class="FunctionButton"><a href="/staff/idList.action">修改</a></div>
	<div class="FunctionButton"><a href="/back/detail/saveInform.jsp">添加</a></div>
</div>
</body>
</html>
