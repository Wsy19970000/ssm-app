
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>意见反馈</title>
</head>
<body>
<table id="dg" style="width: 800px;height: 600px">

</table>
<span><%=basePath %>/appBase/advice.do</span>
</body>
<script type="text/javascript">

    /*$.post('<%=basePath %>appBase/advice.do',function x() {
        $("#dg").datagrid({
            columns:[[
                {title:'意见内容',field:'content',width:150,height:70},
                {title:'时间',field:'createTime',width:150,height:70,sortable:true},
                {title:'姓名',field:'uName',width:150,height:70},
                {title:'联系方式',field:'phone',width:150,height:70},
                {title:'是否已处理',field:'status',width:150,height:70}]
            ]
        })
    })*/
    $(function () {
        $("#dg").datagrid({
            fit:true,//table自适应
            rownumbers:true,//序号
            url:"<%=basePath %>appBase/advice.do",
            striped:true,//隔行变色
            columns:[[
                {title:'意见内容',field:'content',width:150,height:70},
                {title:'时间',field:'createTime',width:150,height:70,sortable:true},
                {title:'姓名',field:'uName',width:150,height:70},
                {title:'联系方式',field:'phone',width:150,height:70},
                {title:'是否已处理',field:'status',width:150,height:70}]
            ],
            sortable:true,
            sortName:"createTime,status",
            remoteSort:false,
            pagination:true,
            pageList:[1,5,10,20],
            toolbar:[
                {
                    text:'已处理',
                    iconCls:'icon-edit',
                    handle:function () {
                        var rows = $("#dg").datagrid("getSelections");
                        var length = rows.length;
                        if(length == 0){
                            $.messager.alert("没有选中行数")
                        }else{
                            var idStr = "";
                            for (var i in length) {
                                idStr += rows[i].id;//获取行号
                            }
                            $.ajax({
                                url:"",
                                type:"post",
                                data:"json",
                                data:{idStr:idStr},
                                success:function(rs){
                                    if(rs){
                                        $("#dg").datagrid("reload");
                                    }else{
                                        $.message.alert('提示','处理失败');
                                    }
                                },
                                error:function (rs) {
                                    $.messager.alert("处理失败")
                                }
                            })
                        }
                    }
                },'|',{
                    text: "批量删除",
                    iconCls: 'icon-remove',
                    handle:function () {
                        var rows = $("#dg").datagrid("getSelections");
                        var length = rows.length;
                        if(length == 0){
                            $.messager.alert("没有选中行数")
                        }else{
                            var idStr = "";
                            for (var i in length) {
                                idStr += rows[i].id;//获取行号
                            }
                            $.ajax({
                                url:"",
                                type:"post",
                                data:"json",
                                data:{idStr:idStr},
                                success:function(rs){
                                    if(rs){
                                        $("#dg").datagrid("reload");
                                    }else{
                                        $.message.alert('提示','删除失败');
                                    }
                                },
                                error:function (rs) {
                                    $.messager.alert("删除失败")
                                }
                            })
                        }
                    }
                }
            ]
        })
    })
</script>
</html>