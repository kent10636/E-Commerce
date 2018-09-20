<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="admin_AdminInfo_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>网上商城后台登录</title>
    <link href="../css/MainCss.css" rel="Stylesheet" type="text/css" />

    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="../js/jquery.js"></script>
    <script src="../js/cloud.js" type="text/javascript"></script>
    <script language="javascript">
        $(function () {
            $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
            $(window).resize(function () {
                $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
            })
        });
    </script>

    <style>
        label{width:40px;display:inline-block}
    </style>
</head>

<body style="background-color: #1c77ac; background-image: url(../images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">
    <form id="form1" runat="server">
        <div id="mainBody">
            <div id="cloud1" class="cloud"></div>
            <div id="cloud2" class="cloud"></div>
        </div>

        <div class="logintop">
            <span>欢迎登录后台管理系统</span>
            <ul></ul>
        </div>

        <%--<div class="loginbody">
            <span class="systemlogo"></span>
            <div class="loginbox">
                <ul>
                    <li>
                        <asp:TextBox ID="txtUid" runat="server" CssClass="loginuser"></asp:TextBox>
                    </li>

                    <li>
                        <asp:TextBox ID="TextBox1" TextMode="Password" CssClass="loginpwd" runat="server"></asp:TextBox>
                    </li>

                    <li>
                        <asp:Button ID="btnLogin" runat="server" Text="登录" CssClass="loginbtn" OnClick="btnLogin_Click" />

                        <input id="btnReset" type="reset" class="loginbtn" value="重置" />
                    </li>
                </ul>
            </div>
        </div>--%>

        <div class="loginbody">
            <span class="systemlogo"></span>
            <div class="loginbox">
                <ul>
                    <li>
                        <label>用户名</label>
                        <asp:TextBox ID="txtAmdinName" runat="server" CssClass="loginuser" 
                            onfocus="this.className='loginuser';" onblur="this.className='loginuser';" MaxLength="20" Style="width: 200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAmdinName" Display="Dynamic" ErrorMessage="用户名不能为空！">*必填项</asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label>密&nbsp;&nbsp;码</label>
                        <asp:TextBox ID="txtPwd" runat="server" CssClass="loginpwd" 
                            onfocus="this.className='loginpwd';" onblur="this.className='loginpwd';" MaxLength="20" Style="width: 200px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="密码不能为空!">*必填项</asp:RequiredFieldValidator>
                    </li>
                    <li>
                        <label>验证码</label>
                        <asp:TextBox ID="txtCodeNum" runat="server" CssClass="loginpwd"
                            onfocus="this.className='loginpwd';" onblur="this.className='loginpwd';" MaxLength="5" Style="width: 130px"></asp:TextBox>

                        <img src="../../Tool/CheckInage.aspx" onclick="this.src=this.src+'?'" id="imgcode" title="点击刷新验证码" alt="点击刷新验证码" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="txtCodeNum" Display="Dynamic" ErrorMessage="验证码不能为空!">*必填项</asp:RequiredFieldValidator>
                    </li>
                    <li>&nbsp;</li>
                    <li>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="imbtnLogin" runat="server" Text="登录" CssClass="loginbtn" OnClick="imbtnLogin_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input id="btnReset" type="reset" class="loginbtn" value="重置" />
                    </li>
                </ul>
            </div>
        </div>

        <%--<div id="LoginBar">
            <ul>
                <li class="LoginTop"></li>
                <li class="FormNav">
                    <dl>
                        <dt>
                            <label>用户名:</label>
                            <asp:TextBox ID="txtAmdinName" runat="server" CssClass="FormBase" onfocus="this.className='FormFocus';" onblur="this.className='FormBase';" MaxLength="20" Style="width: 200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvAdminName" runat="server"
                                ControlToValidate="txtAmdinName" Display="Dynamic" ErrorMessage="用户名不能为空！">*必填项</asp:RequiredFieldValidator>
                        </dt>
                        <dt>
                            <label>密&nbsp;&nbsp; 码:</label>
                            <asp:TextBox ID="txtPwd" runat="server" CssClass="FormBase"
                                onfocus="this.className='FormFocus';" onblur="this.className='FormBase';"
                                MaxLength="20" Style="width: 200px" TextMode="Password"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="rfvAdminPwd" runat="server"
                                ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="密码不能为空!">*必填项</asp:RequiredFieldValidator>

                        </dt>
                        <dd>
                            <label>验证码</label>
                            <asp:TextBox ID="txtCodeNum" runat="server" CssClass="FormBase"
                                onfocus="this.className='FormFocus';" onblur="this.className='FormBase';"
                                MaxLength="5" Style="width: 130px"></asp:TextBox>
                            <img src="../../Tool/CheckInage.aspx" onclick="this.src=this.src+'?'" id="imgcode" title="点击刷新验证码" alt="点击刷新验证码" />
                            <asp:RequiredFieldValidator ID="rfvAdminCodeName" runat="server"
                                ControlToValidate="txtCodeNum" Display="Dynamic" ErrorMessage="验证码不能为空!">*必填项</asp:RequiredFieldValidator>
                        </dd>
                        <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           
                            <asp:ImageButton ID="imbtnLogin" runat="server"
                                ImageUrl="~/images/button.gif" OnClick="imbtnLogin_Click" />
                        </dt>
                    </dl>
                </li>
                <li class="LoginBottom"></li>
            </ul>
        </div>--%>
        
        <asp:TextBox ID="txtBackUrl" Visible="false" runat="server"></asp:TextBox>
        
        <div class="loginbm">版权所有  2018</div>
    </form>
</body>



</html>
