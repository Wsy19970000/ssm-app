<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2020/5/30
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>拖动组件</title>
    <style type="text/css">
        #box1{
            width: 100px;
            height: 100px;
            background: red;
        }

        #box2{
            width: 600px;
            height: 400px;
            background: green;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/icon.css">
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.easyui.min.js"></script>
</head>
<body>
<div id="box1"></div>
<div id="box2" class="easyui-draggable" data-options="revert:false,cursor:'point'"></div>
</body>
<script type="text/javascript">
    $("#box1").draggable({
        revert:true, //设置为true停止就返回
        cursor:'pointer',//拖动指针形式
        edge:10
    })
</script>
</html>