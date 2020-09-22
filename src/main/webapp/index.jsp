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
    <link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="themes/icon.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <title>首页</title>

    <style type="text/css">
        .menuA{
            text-decoration :none;
        }
    </style>

    <script type="text/javascript">
        $(function(){
            $(".menuA").click(function(){
                var contentText = this.innerHTML;
                var url = this.href;
                // alert(url);
                createTab(contentText,url);
                // false超链接就不跳转
                return false;
            });
        });

        function createTab(contentText,url){
            // 判断选项卡是否存在:
            var flag = $("#tt").tabs("exists",contentText);
            if(flag){
                // 如果已经存在，让其被选中
                $("#tt").tabs("select",contentText);
            }else{
                // 如果不存在,创建新的选项卡
                $('#tt').tabs('add',{
                    title:contentText,
                    content:createUrl(url),
                    closable:true
                });
            }
        }

        function createUrl(url){
            return " <iframe src='"+url+"' style='width:100%;height:95%;border:none;'></iframe>";
        }
    </script>

</head>
<body>
    <div id="cc" class="easyui-layout" data-options="fit:true">
        <div data-options="region:'north',title:'North Title',split:true" style="height:100px;"></div>
        <div data-options="region:'west',title:'West',split:true" style="width:200px;">
            <div id="aa" class="easyui-accordion" data-options="fit:true">
                <div title="客户管理" data-options="iconCls:'icon-save'" style="overflow:auto;padding:10px;">
                    <a href="customer/findAllTo" class="menuA">客户列表</a>
                </div>
                <div title="联系人管理" data-options="iconCls:'icon-reload'" style="padding:10px;">
                    <a href="linkman.html" class="menuA">联系人列表</a>
                </div>
                <div title="拜访记录管理" data-options="iconCls:'icon-help'">
                    <a href="#" class="menuA">拜访记录列表</a>
                </div>
                <div title="统计分析管理" data-options="iconCls:'icon-search'" style="padding:10px;">
                    <a href="#" class="menuA">统计分析管理</a>
                </div>
                <div title="系统管理" data-options="iconCls:'icon-ok'">
                    <a href="#" class="menuA">系统管理</a>
                </div>
            </div>
        </div>
        <div data-options="region:'center',title:''" style="padding:5px;background:#eee;">
            <div id="tt" class="easyui-tabs" data-options="fit:true">
                <div title="数据显示" style="padding:20px;display:none;">

                </div>
            </div>
        </div>
    </div>
</body>
</html>
