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
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css>
BODY {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
}
TD {
	FONT-SIZE: 12px; COLOR: #ffffff; FONT-FAMILY: 宋体
}
</STYLE>
<script type="text/javascript">function WebForm_DoPostBackWithOptions(webFormPostBackOptions) {

}

function WebForm_OnSubmit() {
  return undefined;
}

function charge(){
		window.location="${ pageContext.request.contextPath }/regist.jsp";
	}
</script>

<META content="MAHATMA 6.00.6000.16809" name=GENERATOR></HEAD>
<BODY><!-- target="_parent" 在父窗口打开（当前整个页面） -->
<FORM id=form1 name=form1 onsubmit="javascript:return WebForm_OnSubmit();" method=post  target="_parent" action="${ pageContext.request.contextPath }/user_login.action">

<DIV id=UpdatePanel1>
<DIV id=div1 
style="LEFT: 0px; POSITION: absolute; TOP: 0px; BACKGROUND-COLOR: #0066ff"></DIV>
<DIV id=div2 
style="LEFT: 0px; POSITION: absolute; TOP: 0px; BACKGROUND-COLOR: #0066ff"></DIV>


<DIV>&nbsp;&nbsp; </DIV>
<DIV>
<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
  <TBODY>
  <TR>
    <TD style="HEIGHT: 105px"><IMG src="images/login_1.gif" 
  border=0></TD></TR>
  <TR>
    <TD background=images/login_2.jpg height=300>
      <TABLE height=300 cellPadding=0 width=900 border=0>
        <TBODY>
        <TR>
          <TD colSpan=2 height=35></TD></TR>
        <TR>
          <TD width=360></TD>
          <TD>
            <TABLE cellSpacing=0 cellPadding=2 border=0>
              <TBODY>
              <TR>
              	<s:actionerror/>
                <TD style="HEIGHT: 28px" width=80>登 录 名：</TD>
                <TD style="HEIGHT: 28px" width=150>
                <INPUT id=txtName 
                  style="WIDTH: 130px" name="user_code"></TD>
                <TD style="HEIGHT: 28px" width=370><SPAN 
                  id=RequiredFieldValidator3 
                  style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入登录名</SPAN></TD></TR>
              <TR>
                <TD style="HEIGHT: 28px">登录密码：</TD>
                <TD style="HEIGHT: 28px">
                <INPUT id=txtPwd style="WIDTH: 130px" type=password name="user_password"></TD>
                <TD style="HEIGHT: 28px"><SPAN id=RequiredFieldValidator4 
                  style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入密码</SPAN></TD></TR>
              <TR>
                <TD style="HEIGHT: 28px">验证码：</TD>
                <TD style="HEIGHT: 28px"><INPUT id=txtcode 
                  style="WIDTH: 130px" name=txtcode></TD>
                <TD style="HEIGHT: 28px">&nbsp;</TD></TR>
              <TR>
                <TD style="HEIGHT: 18px"></TD>
                <TD style="HEIGHT: 18px"></TD>
                <TD style="HEIGHT: 18px"></TD></TR>
              <TR>
                <TD></TD>
                <TD>
                <INPUT id=btn 
                  style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
                  onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("btn", "", true, "", "", false, false))' 
                  type=image src="images/login_button.gif" name=btn> 
                </TD>
                <TD>
                <INPUT id=btn 
                  style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px;
                  src="images/login_button.gif" type="button" value="注册" onclick="charge()"> 
                </TD>
              </TR>
              </TBODY>
              </TABLE>
              </TD></TR>
              </TBODY>
              </TABLE>
              </TD>
              </TR>
  <TR>
    <TD><IMG src="images/login_3.jpg" 
border=0></TD></TR></TBODY></TABLE></DIV></DIV>


</FORM></BODY></HTML>
