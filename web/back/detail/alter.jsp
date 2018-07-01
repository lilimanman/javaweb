<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/25
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- 包含公共的JSP代码片段 -->
    <title>更改个人信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="style/js/jquery.js"></script>
    <script type="text/javascript" src="style/js/page_common.js"></script>
    <link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>

<!-- 页面标题 -->
<div id="TitleArea">
    <div id="TitleArea_Head"></div>
    <div id="TitleArea_Title">
        <div id="TitleArea_Title_Content">
            <img border="0" width="10" height="13" src="style/images/title_arrow.gif"/>  修改个人信息
        </div>
    </div>
    <div id="TitleArea_End"></div>
</div>


<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <!-- 表单内容 -->
    <!---<form action="#"method="post">-->
    <!-- 本段标题（分段标题） -->
    <div class="ItemBlock_Title">
        <img width="4" height="7" border="0" src="style/images/item_point.gif">
    </div>
    <%= request.getParameter("sid") %>
    <!-- 本段表单字段 -->
    <div class="ItemBlockBorder">
        <div class="ItemBlock">
            <div class="ItemBlock2">
                <form  action="/staff/staffUpdate.action" method="get">
                    <table cellpadding="0" cellspacing="0" class="mainForm">
                        <tr>
                            <td width="80px">员工号</td>
                            <td>
                                <select name="sid">
                                    <option selected="selected"></option>
                                    <c:forEach items="${applicationScope.ids}" var="id">
                                        <option value="${id}">${id}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        <tr>
                            <td width="80px">基本工资</td>
                            <td><input type="text"  name="base" maxlength="20"></td>
                        </tr>
                        <tr>
                            <td width="80px">加班薪资</td>
                            <td><input type="text"  name="add" maxlength="20"></td>>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input type="submit"  value="确认" class="FunctionButtonInput">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">${message}</td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <!-- 表单操作 -->
    <div id="InputDetailBar">
        <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
    </div>
    <!--</form>-->
</div>
</body>
</html>
