<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/18
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>欢迎来到主页</title>
  <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<br>
<div align="center">
  <font size="7" color="red"face="隶书">
    欢迎使用办公系统
  </font>
</div>
<div align="center">
  <hr color="blue"border="6"size="5"><br>
  <table width="300"border="0"align="center">
    <TR>
      <Th width="120"scope="col"><br>
        <Strong><A Href="home.html">本站首页</A></Strong></Th>
      <Th width="120"scope="col"><br>
        <Strong><A Href="wjcx.aspx">文件查询</A></Strong></Th>
      <Th width="120"scope="col"><br>
        <Strong><A Href="bmzd.aspe">部门站点</A></Strong></Th>
      <Th width="120"scope="col"><br>
        <Strong><A Href="xxgs.aspe">信息公示</A></Strong></Th>
    </TR>
  </table>
</div>
<div id="web">
  <form action="/check.action" method="post">
    <table align="center" width="400" height="200" border="1">\
      <tr>
        <td align="center" colspan="2" height="40">
         <b>登录你的账户</b>
        </td>
      </tr>
      <tr>
        <td align="right">账号</td>
        <td align="left"><input type="text" name="sid"></td>
      </tr>
      <tr>
        <td align="right">密码</td>
        <td align="left"><input type="text" name="password"></td>
      </tr>
    <tr>
        <td align="center" colspan="2"><input type="submit" value="登录"/></td>
    </tr>
      <tr>
        <td align="center" colspan="2">${message}</td>
      </tr>
  </table>
</form>
<form >
  <p style="height:100px;"></p>
  <div id="EndDiv">CopyRight;2018 Websoft All Right Reserved.版权所有@limm</div>
</form>
</div>
</body>
</html>

