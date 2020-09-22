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
<TITLE>添加联系人</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>


<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<s:form namespace="/" name="form1" id="form1" method="post" action="linkman_saveLink" theme="simple">
		<!-- 联系人ID 隐藏属性 -->
		<s:hidden name="lkm_id" />

		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						 height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：联系人管理 &gt; 修改联系人</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing=0 cellPadding=5  border=0>
							<tr>
								<td>所属客户：</td>
								<td>
									<!-- listKey listValue 相当于option标签 那么 默认值 -->
									<s:select list="list" name="customer.cust_id" headerKey="" headerValue="-请选择-" listKey="cust_id" listValue="cust_name"/>
								</td>
							</tr>
							<TR>
								<td>联系人名称：</td>
								<td>
									<s:textfield cssclass="textbox"  id="sChannel2" cssStyle="WIDTH: 180px" maxlength="50" name="lkm_name"/>
								</td>
								<td>联系人性别：</td>
								<td>
									<s:radio list="#{'男':'男','女':'女'}" name="lkm_gender"/>
								</td>
							</TR>
							<TR>
								<td>联系人办公电话 ：</td>
								<td>
									<s:textfield cssclass="textbox"  id="sChannel2" cssStyle="WIDTH: 180px" maxlength="50"  name="lkm_phone"/>
								</td>
								<td>联系人手机 ：</td>
								<td>
									<s:textfield cssclass="textbox"  id="sChannel2" cssStyle="WIDTH: 180px" maxlength="50"  name="lkm_mobile"/>
								</td>
							</TR>
							<TR>
								<td>联系QQ：</td>
								<td>
									<s:textfield cssclass="textbox"  id="sChannel2" cssStyle="WIDTH: 180px" maxlength="50"  name="lkm_qq"/>
								</td>
								<td>联系人邮箱 ：</td>
								<td>
									<s:textfield cssclass="textbox"  id="sChannel2" cssStyle="WIDTH: 180px" maxlength="50" name="lkm_email"/>
								</td>
							</TR>
							<TR>
								<td>联系职位：</td>
								<td>
									<s:textfield cssclass="textbox"  id="sChannel2" cssStyle="WIDTH: 180px" maxlength="50" name="lkm_position"/>
								</td>
								<td>联系人备注 ：</td>
								<td>
									<s:textfield cssclass="textbox"  id="sChannel2" cssStyle="WIDTH: 180px" maxlength="50" name="lkm_memo"/>
								</td>
							</TR>
							<tr>
								<td rowspan=2>
								<INPUT class=button id=sButton2 type=submit
														value="保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</s:form>
</BODY>
</HTML>
