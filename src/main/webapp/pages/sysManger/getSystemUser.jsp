<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>系统用户列表页面</title>
</head>
<body>
<table id="sysUser"></table>
<center><%=basePath %>/user/getUserInfo.do</center>
</body>
<script type="text/javascript">
    $(function () {
        $("#sysUser").datagrid({
            url:"<%=basePath %>/user/getUserInfo.do",
            columns:[[
                {title:'全选',checkbox:true},
                {title:'管理员账号',field:'account',width:150},
                {title:'管理员姓名',field:'uName',width:150},
                {title:'管理员手机',field:'phone',width:150},
                {title:'管理员邮箱',field:'email',width:150},
                {title:'管理员状态',field:'status',width:150,formatter: function (value,row,index) {
                        if (value == "0"){
                            return "禁用";
                        }else{
                            return "启用";
                        }
                    }
                },
                {title:'角色管理',field:'operate1',width:150,formatter: function(value,row,index)
                    {
                        return "<a href='javascript:void(0)'>角色设置</a>";
                    }
                },
                {title:'操作',field:'operate2',width:150,formatter: function(value,row,index)
                    {
                        return "<a href='javascript:void(0)'>查看</a><a href='javascript:void(0)'>编辑</a><a href='javascript:void(0)'>停用</a>";
                    }
                }
                    ]
            ],
            pagination:true,
            pageList:[1,5,10,20],
            fit:true,
            toolbar:[{
                text:"添加用户",
                iconCls:'icon-add',
                handle:function () {
                    
                }
            },'|',{
                text:"删除用户",
                iconCls:'icon-remove',
                handle:function () {

                }
            }]
                })
    })
</script>
</html>