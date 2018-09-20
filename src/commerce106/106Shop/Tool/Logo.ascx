<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Logo.ascx.cs" Inherits="Tool_Logo" %>

<link href="../css/Logo.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    pc.BindClassRoot("selectprompt");
</script>
<div id="main">
    <div id="topright">
        <div class="register">
            <ul>
                <li id="registerlogin">
                    <asp:LinkButton ID="lnkRegister" runat="server" Height="15px" PostBackUrl="~/user/UserRegister.aspx" ToolTip="注册">注册</asp:LinkButton>
                </li>
            </ul>
        </div>
        <div class="enroll">
            <ul>
                <li id="enrollLogin">
                    <asp:LinkButton ID="lnkenroll" runat="server" Height="15px" PostBackUrl="~/user/UserLogin.aspx" ToolTip="登录">登录</asp:LinkButton> 
                </li>
            </ul>
        </div>
        <div class="shopping">
            <ul>
                <li>
                    <asp:LinkButton ID="lnkButton1" runat="server" Height="15px" PostBackUrl="~/proscenium/AcceptAddrInfo/Default.aspx" ToolTip="个人信息">个人信息</asp:LinkButton>
                </li>
            </ul>
        </div>
    </div>
    <td colspan="2">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/xdlogo.png" />
    </td>
</div>