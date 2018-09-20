<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="AdminUpdatePwd.aspx.cs" Inherits="admin_AdminInfo_AdminUpdatePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="AdminNav">
        <div>
            <ul>
                <li class="now"><a href="AddAdminInfo.aspx" title="添加管理员信息">添加管理员</a></li>
                <li><a href="ManageAdmin.aspx" title="管理管理员信息">管理管理员</a></li>
                <li><a href="AdminUpdatePwd.aspx" title="修改管理员信息">修改密码</a></li>
            </ul>
        </div>
    </div>--%>
    <div>

        <table align="center" cellpadding="0" cellspacing="0"
            style="width: 985px; border: 1px solid #FF00FF; margin-left: 0px;">

            <td colspan="2" align="center" style="background-color: #C0C0C0; font-size: 22px; font-weight: bold;">修改管理员密码</td>

            <tr>
                <td style="width: 20%" align="right">原&nbsp;密&nbsp;码：</td>
                <td align="left">
                    <asp:TextBox ID="TextBox1" runat="server"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 20%; height: 30px" align="right">新&nbsp;密&nbsp;码：</td>
                <td align="left">
                    <asp:TextBox ID="TextBox2" runat="server"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 20%; height: 30px" align="right">确认密码：</td>
                <td align="left">
                    <asp:TextBox ID="TextBox3" runat="server"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ErrorMessage="CompareValidator" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 20%; height: 30px" align="right">&nbsp;</td>
                <td align="left">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="right">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
        </table>
    </div>

    <div>
        <asp:Button ID="btnAddAdmin" runat="server" Text="确定"/>
        &nbsp;&nbsp;&nbsp;
        <input id="btnReset" type="reset" value="重置" />
    </div>
</asp:Content>

