
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/static/js/easyui/themes/icon.css">
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>/static/js/easyui/locale/easyui-lang-zh_CN.js"></script>
    <%--引入kindeditor--%>
    <link rel="stylesheet" href="<%=basePath %>/static/js/kindeditor-4.1.10/themes/default/default.css" />
    <script charset="utf-8" src="<%=basePath %>/static/js/kindeditor-4.1.10/kindeditor-min.js"></script>
    <script charset="utf-8" src="<%=basePath %>/static/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
    <%--引入json处理工具类--%>
    <script charset="utf-8" src="<%=basePath %>/static/js/jsonHandler.js"></script>
    <title>##############欢迎来到后台！####################</title>
</head>
<body class="easyui-layout">
    <div data-options="region:'north',title:'north',split:true,noheader:true" style="height: 80px;">

    </div>
    <div data-options="region:'south',title:'south',split:true,noheader:true" style="height: 80px;">
        <center style="line-height: 70px">
            &copy;版权所有|维权必究
        </center>
    </div>
    <div data-options="region:'west',iconCls:'icon-world',title:'菜单栏',split:true" style="width: 200px">
        <ul id="menu"></ul>
    </div>
    <div data-options="region:'center',title:'center',split:true,noheader:true" style="width:600px">
        <div id="tt" data-options="fit:true" class="easyui-tabs">
            <div title="首页" data-options="iconCls:'icon-house'" style="padding: 20px">
                <center style="line-height: 400px">
                    <span style="font-size: 36px;color: blue;font-weight:bolder;text-shadow: 10px 10px 5px #ccc">欢迎使用xxx管理系统</span>
                </center>
            </div>
        </div>
    </div>
    <div data-options="region:'east',title:'在线客服',split:true,noheader:false" style="width:200px;"></div>
</body>
<script type="text/javascript">
    $(function () {
        /*动态获取后台权限树,封装好了ajax*/
        $("#menu").tree({
            url:"<%=basePath%>/system/getMenu.do",

        })
    })
</script>
</html>