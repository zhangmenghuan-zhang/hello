<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/9/19
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <!-- 引入EasyUI的CSS和JS -->
    <link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../themes/icon.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../locale/easyui-lang-zh_CN.js"></script>
    <title>客户</title>

    <script type="text/javascript">
        $(function(){
            $('#dg').datagrid({
                url:'../customer/findAll',
                columns:[[
                    {field:'cust_name',title:'客户名称',width:100},
                    {field:'cust_source',title:'客户来源',width:100},
                    {field:'cust_level',title:'客户级别',width:100} ,
                    {field:'cust_industry',title:'客户行业',width:100} ,
                    {field:'cust_phone',title:'固定电话',width:100} ,
                    {field:'cust_mobile',title:'移动电话',width:100} ,
                    {field:'xxx',title:'操作',width:100,formatter: function(value,row,index){
                            return "<a href='#' onclick='edit("+row.cust_id+")'>修改</a> | <a href='#' onclick='del("+row.cust_id+")'>删除</a>";
                        }
                    }

                ]],
                // 显示分页工具条
                pagination:true,
                // 初始化的页数
                pageNumber:1,
                // 每页显示记录数:
                pageSize:3,
                // 分页工具条中下拉列表中的值：
                pageList:[3,5,10],
                // 隔行换色
                striped:true,
                toolbar: [{
                    iconCls: 'icon-add',
                    handler: function(){
                        // 弹出窗口:
                        $("#winAdd").window("open");
                    }
                }]

            });
        })

        function save(){
            $('#formAdd').form({
                url:"../customer/saveOne",
                success:function(data){
                    var jsonData = eval("("+data+")");
                    $.messager.show({
                        title:'提示消息',
                        msg:jsonData.msg,
                        timeout:3000,
                        showType:'slide'
                    });
                }
            });
            // 关闭窗口:
            $("#winAdd").window("close");
            // 重新加载数据:
            $("#dg").datagrid("reload");
            // submit the form
            $('#formAdd').submit();
        }

        function edit(id){
            // alert(id);
            $("#winUpdate").window("open");
            $('#formUpdate').form('load',"../customer/updateOne?cust_id="+id+"");
        }

        function update(){
            $('#formUpdate').form({
                url:"../customer/updateOne1",
            });
            // 关闭窗口:
            $("#winUpdate").window("close");
            // 重新加载数据:
            $("#dg").datagrid("reload");
            // submit the form
            $('#formUpdate').submit();
        }

        function del(id){
            $.post("../customer/deleteOne",{"cust_id":id},function(data){
                $.messager.show({
                    title:'提示消息',
                    msg:data.msg,
                    timeout:5000,
                    showType:'slide'
                });
                $("#dg").datagrid("reload");
            },"json");
        }
    </script>
</head>
<body>
    <table id="dg"></table>

    <!-- 添加客户的表单，默认是隐藏的 -->
    <div id="winAdd" class="easyui-window" title="添加客户" style="width:600px;height:400px"
         data-options="iconCls:'icon-save',modal:true,closed:true">

        <form id="formAdd" method="post">
            <TABLE cellSpacing=0 cellPadding=5  border=0>
                <TR>
                    <td>客户名称：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_name">
                    </td>
                    <td>客户级别 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_level">
                    </td>
                </TR>

                <TR>
                    <td>信息来源 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_source">
                    </td>
                    <td>客户行业：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_industry">
                    </td>
                </TR>

                <TR>
                    <td>固定电话 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
                    </td>
                    <td>移动电话 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
                    </td>
                </TR>

                <tr>
                    <td rowspan=2>
                        <button id="customerBtn" type="button" onclick="save()">保存</button>
                    </td>
                </tr>
            </TABLE>
        </form>
    </div>
    <!-- 更新客户的表单，默认是隐藏的 -->
    <div id="winUpdate" class="easyui-window" title="修改客户" style="width:600px;height:400px"
         data-options="iconCls:'icon-save',modal:true,closed:true">

        <form id="formUpdate" method="post">
            <input type="hidden" name="cust_id"/>
            <TABLE cellSpacing=0 cellPadding=5  border=0>
                <TR>
                    <td>客户名称：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_name">
                    </td>
                    <td>客户级别 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_level">
                    </td>
                </TR>

                <TR>
                    <td>信息来源 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_source">
                    </td>
                    <td>客户行业：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_industry">
                    </td>
                </TR>

                <TR>
                    <td>固定电话 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
                    </td>
                    <td>移动电话 ：</td>
                    <td>
                        <INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_mobile">
                    </td>
                </TR>

                <tr>
                    <td rowspan=2>
                        <button id="customerBtn" type="button" onclick="update()">保存</button>
                    </td>
                </tr>
            </TABLE>
        </form>
    </div>

</body>
</html>
