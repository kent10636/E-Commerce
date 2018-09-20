<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="AddHelper.aspx.cs" Inherits="admin_HelpInfo_AddHelper" ValidateRequest="false" %>

<%--<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="FTB" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <%-- <div class="AdminNav">
        <div>
            <ul>
                <li class="now"><a href="AddHelper.aspx" title="添加网站帮助信息">添加网站帮助信息</a></li>
                <li><a href="ManageHelpInfo.aspx" title="管理网站帮助信息">管理网站帮助信息</a></li>
            </ul>
        </div>
    </div>--%>
    <div>

        <table align="center" cellpadding="0" cellspacing="0"
            style="width: 985px; border: 1px solid #FF00FF">
            <tr>
                <td style="background-color: #C0C0C0; font-size: 28px; font-weight: bold; font-variant: normal; color: #000000;" colspan="2">
                    <asp:Label ID="lblShow" runat="server" Text="添加网站帮助信息" Font-Size="22px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 20%; height:40px" align="right">帮助标题：</td>
                <td align="left">
                    <asp:TextBox ID="txtHelpTitle" runat="server" MaxLength="50" Width="367px"
                        BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxthelpTitle" runat="server"
                        ControlToValidate="txtHelpTitle" Display="Dynamic" ErrorMessage="*必填项"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height:30px" align="right">帮助类别：</td>
                <td align="left">
                    <asp:DropDownList ID="ddlhelpClassName" runat="server" Height="20px"
                        Width="187px"
                        BorderColor="Black" BorderWidth="1px">
                        <asp:ListItem Value="0">网上商城相关</asp:ListItem>
                        <asp:ListItem Value="1">积分规则</asp:ListItem>
                        <asp:ListItem Value="2">交易流程</asp:ListItem>
                        <asp:ListItem Value="3">客户服务</asp:ListItem>
                        <asp:ListItem Value="4">商品检索</asp:ListItem>
                        <asp:ListItem Value="5">注册登录 </asp:ListItem>
                        <asp:ListItem Value="6">积分兑换</asp:ListItem>
                        <asp:ListItem Value="7">订单相关</asp:ListItem>
                        <asp:ListItem Value="8">其他</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">帮助内容：</td>
                <td align="left">
                    <asp:TextBox ID="txtContent" runat="server" BorderColor="Black" BorderWidth="1px" Width="400px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                    <%--<iframe id="eWebEditor1" src="../Edit/ewebeditor.htm?id=txtContent&style=coolblue"
                        frameborder="0" scrolling="no" style="height: 317px; width: 449px"></iframe>--%>
                </td>
            </tr>
            <tr>
                <td style="height:40px" align="right">提交：</td>
                <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="btnAddHelp" runat="server" Text="添加帮助"
                    OnClick="btnAddHelp_Click"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;
               
                    <asp:Button ID="btnUpdateHelp" runat="server" Text="修改帮助"
                        OnClick="btnUpdateHelp_Click" />
                    &nbsp;&nbsp;&nbsp;
               
                    <asp:Button ID="btnRegest" runat="server" Text="重置" OnClick="btnRegest_Click" />
                </td>
            </tr>
            <tr>
                <td align="right">&nbsp;</td>
                <td align="left">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>

