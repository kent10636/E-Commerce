<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserRegister.aspx.cs" Inherits="user_UserRegister" %>

<%@ Register Src="../Tool/foot.ascx" TagName="foot" TagPrefix="uc1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="Stylesheet" type="text/css" href="../css/userlogin.css" />
    <title>用户注册</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="main">
            <%--<div class="top">
            <div class="topleft">
                &nbsp;<img src="../images/logoo.jpg" alt="陇原商城欢迎您" />
            </div>
            <div class="topright">
                <img src="../images/login06.gif" alt="陇原商城" />
                <ul>
                    <li><a href="UserLogin.aspx">登录</a>&nbsp;&nbsp;<a href="../proscenium/Index.aspx">返回首页</a>&nbsp; <a href="#">新手帮助</a>&nbsp; </li>
                </ul>
            </div>
        </div>--%>
            <div class="top" style="background-color: #F73809">
                <div class="topleft">
                    <img src="../images/xdlogo.png" />
                </div>
                <div class="topright">
                    <br />
                    &nbsp;<br />
                    <br />
                    <asp:LinkButton ID="linkIndex" runat="server" CausesValidation="False"
                        PostBackUrl="~/proscenium/Index.aspx">返回首页</asp:LinkButton>
                    &nbsp;
                </div>
            </div>
            <div class="content">
                <div class="contentloginv">
                    <div class="contentonev">
                        <img src="../images/login11.gif" alt="陇原商城" />
                    </div>
                    <div class="contenttwov">
                        <%--<div class="conterloginone">
                        <ul>
			                <li><strong><span class="yanse">1填写信息 ></span> 2提交 > 3&gt;填写详细信息&gt;4注册成功 </strong></li>
			            </ul>
                    </div>--%>
                        <div class="logincontent">
                            <div class="logincontentv">
                                <div class="logincontentphoto">
                                    <img src="../images/login18.gif" alt="会员注册" />
                                    <ul>
                                        <li>以下信息不能为空</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="loginzcneir">
                                <div class="loginzcneirone">
                                    <div class="loginzcneironeleft">
                                        <div class="loginzcneironeleft1">
                                            <ul>
                                                <li>会&nbsp; 员&nbsp; 名：<asp:TextBox ID="txtUserName" runat="server" MaxLength="20" Width="120px"></asp:TextBox>
                                                    <cc1:TextBoxWatermarkExtender ID="txtUserName_TextBoxWatermarkExtender"
                                                        runat="server" Enabled="True" TargetControlID="txtUserName"
                                                        WatermarkCssClass="watermark" WatermarkText="请输入正确的会员名">
                                                    </cc1:TextBoxWatermarkExtender>
                                                    <asp:RequiredFieldValidator ID="rfvUserName" runat="server"
                                                        ErrorMessage="会员名不能为空" ControlToValidate="txtUserName" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="loginzcneironeright">
                                        <ul>
                                            <li>提示：5-20个字符(包括小写字母、数字、下划线、中文)，一个汉字为两个字符。一旦注册成功会员名不能修改。</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="loginzcneirone">
                                    <div class="loginzcneironeleft">
                                        <div class="loginzcneironeleft1">
                                            <ul>
                                                <li>密&nbsp;&nbsp;&nbsp;&nbsp;码：&nbsp; <asp:TextBox ID="txtPassword"
                                                    runat="server" Width="120px" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                                                        ErrorMessage="密码不能为空" ControlToValidate="txtPassword" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="loginzcneironeright">
                                        <ul>
                                            <li>提示：6-16个字符 请使用字母加数字或符号的组合密码</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="loginzcneirone">
                                    <div class="loginzcneironeleft">
                                        <div class="loginzcneironeleft1">
                                            <ul>
                                                <li>确 认 密 码：&nbsp;
                                                    <asp:TextBox ID="txtOKPassword" runat="server" TextMode="Password"
                                                        Width="120px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="rfvOKPassworf" runat="server"
                                                        ErrorMessage="确认密码不能为空" ControlToValidate="txtPassword" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                                                        ControlToCompare="txtOKPassword" ControlToValidate="txtPassword"
                                                        Display="Dynamic" EnableTheming="True" ErrorMessage="两次密码输入不一致，请检查！"
                                                        Operator="GreaterThanEqual">*</asp:CompareValidator>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="loginzcneironeright">
                                        <ul>
                                            <li>提示：请再次输入密码，确保和上一次输入一致</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="loginzc2">
                            <div class="logincontentv">
                                <div class="logincontentphoto">
                                    <img src="../images/login30.gif" alt="邮箱注册" />
                                    <ul>
                                        <li>请填写常用的电子邮件地址</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="loginzcneirone">
                                <div class="loginzcneironeleft">
                                    <div class="loginzcneironeleft1">
                                        <ul>
                                            <li>电子邮件：
                                   
                                                <asp:TextBox ID="txtEmail" runat="server" Width="120px"></asp:TextBox>
                                                <cc1:TextBoxWatermarkExtender ID="txtEmail_TextBoxWatermarkExtender"
                                                    runat="server" Enabled="True" TargetControlID="txtEmail"
                                                    WatermarkCssClass="watermark" WatermarkText="请输入正确的电子邮件">
                                                </cc1:TextBoxWatermarkExtender>
                                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                                                    ErrorMessage="电子邮件不能为空" ControlToValidate="txtEmail" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                                    ErrorMessage="电子邮件格式不正确，请检查" ControlToValidate="txtEmail" Display="Dynamic"
                                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="loginzcneironeright">
                                    <ul>
                                        <li>提示：请输入经常使用的邮箱地址</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="loginzcneirone">
                                <div class="loginzcneironeleft">
                                    <div class="loginzcneironeleft1">
                                        <ul>
                                            <li>验 证 码：<asp:TextBox ID="txtCode" Width="100px" runat="server" Height="19px"></asp:TextBox>
                                                <cc1:TextBoxWatermarkExtender ID="txtCode_TextBoxWatermarkExtender"
                                                    runat="server" Enabled="True" TargetControlID="txtCode"
                                                    WatermarkCssClass="watermark" WatermarkText="请输入正确的验证码">
                                                </cc1:TextBoxWatermarkExtender>
                                                <img src="../Tool/CheckInage.aspx" onclick="this.src=this.src+'?'" id="imgcode" title="点击刷新验证码" style="vertical-align: middle; cursor: pointer; margin: 0px; padding: 0px" alt="陇原商城" />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                    ControlToValidate="txtCode" Display="Dynamic" ErrorMessage="验证码不能为空">*</asp:RequiredFieldValidator></li>
                                        </ul>
                                    </div>
                                </div>
                                <%--<div class="loginzcneironeright">
                                    <ul>
                                        <li>
                                        温馨提示：为了网站的安全，请您输入正确的验证码  
					      
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                        <div class="loginfoot">
                            <div class="loginbottom">
                                <asp:CheckBox ID="cbAccept" runat="server"
                                    Text="同意用户协议" Checked="True" />
                                &nbsp;<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                       
                                <%--<asp:TextBox ID="txtDeal" runat="server" ReadOnly="True" TextMode="MultiLine" 
                            MaxLength="100000" Height="60px" Width="890px">     XXXXXXXXXXXX
</asp:TextBox>--%>
                            </div>
                        </div>
                        <div class="loginfoot">
                            <div class="loginbottom">
                                <br />
                                <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="16px"
                                    ShowMessageBox="True" ShowSummary="False" Width="900px" />
                                
                                <asp:Button ID="btnreg" runat="server" Text="会员注册" OnClick="btnreg_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <%--<div class="foot">
                <div class="footindex">
                     <ul>
                          <li>免费注册 | 搜索商品 | 如何购物 |买家信息：购物车 | 我的订单 | 我的积分 |商城服务：7天无理由退款 | 积分使用 | 入驻商城 |</li>
                          <li>客服电话：13756862553   注：客服热线吧受理商品咨询! 如需购买咨询 请直接联系该商品的商家</li>
                          <li>关于陇原网上商城 | 帮助中心 | 联系我们 | 版权说明 | 各类商品 | 积分查询 | 返回首页|</li>
                          <li>20011－2022@版权所有 中国·陇原商城有限责任公司  QQ:934532778 </li>
                     </ul>
               </div>
           </div>--%>
            </div>
        </div>
    </form>
</body>
</html>
