<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/6/24
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><!-- 包含公共的JSP代码片段 -->
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="../back/detail/style/js/jquery.js"></script>
    <script type="text/javascript" src="../back/detail/style/js/page_common.js"></script>
    <link href="../back/detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="../back/detail/style/css/index_1.css" />
</head>
<body>

<div id="TitleArea">
    <div id="TitleArea_Head"></div>
    <div id="TitleArea_Title">
        <div id="TitleArea_Title_Content">
            <img border="0" width="13" height="13" src="style/images/title_arrow.gif"/>
        </div>
    </div>
    <div id="TitleArea_End"></div>
</div>



<div id="QueryArea">
    <form action="/staff/staffList.action" method="post">
    </form>
</div>

<div id="MainArea">
    <form>
        <table class="MainArea_Content" cellspacing="0" cellpadding="0">

            <thead>
            <tr align="center" valign="middle" id="TableTitle">
                <td align="center">工号</td>
                <td align="center">姓名</td>
                <td align="center">加班薪资</td>
                <td align="center">基本工资</td>
            </tr>
            </thead>

            <tbody id="TableData">
                <tr class="TableDetail1">
                    <td align="center">${applicationScope.staff.sid}</td>
                    <td align="center">${applicationScope.staff.sName} &nbsp;</td>
                    <td align="center">${applicationScope.staff.sBase}</td>
                    <td align="center">${applicationScope.staff.sAdd}</td>
                </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>