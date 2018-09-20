<%@ Control Language="C#" AutoEventWireup="true" CodeFile="adminlogoleft.ascx.cs" Inherits="admin_tool_adminlogoleft" %>
<script type="text/javascript" src="../js/jquery-1.4.2.js"></script>
<script type="text/javascript" src="../js/adminlogoleft.js"></script>
<link href="../css/adminmainleft.css" rel="stylesheet" type="text/css" />



<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../js/jquery.js"></script>
<script type="text/javascript">
    $(function () {
        //导航切换
        $(".menuson li").click(function () {
            $(".menuson li.active").removeClass("active")
            $(this).addClass("active");
        });

        $('.title').click(function () {
            var $ul = $(this).next('ul');
            $('dd').find('ul').slideUp();
            if ($ul.is(':visible')) {
                $(this).next('ul').slideUp();
            } else {
                $(this).next('ul').slideDown();
            }
        });
    })
</script>
<div>
    <div class="lefttop"><span></span>功能菜单</div>
    <dl class="leftmenu">  <!--宽度190px-->
        <dd>
            <div>
                <span>
                    <img src="../images/leftico01.png" /></span>
                <a href="../../proscenium/Index.aspx" target="_blank" style="color: darkviolet; font-size: medium">商城首页</a>
            </div>
        </dd>

        <dd>
            <div class="title">管理员信息</div>
            <ul class="menuson">
                <li><a href="../AdminInfo/ManageAdmin.aspx">查看管理员信息</a></li>
                <li><a href="../AdminInfo/AdminUpdatePwd.aspx">修改管理员密码</a></li>
                <li><a href="../AdminInfo/AddAdminInfo.aspx">添加管理员</a></li>
            </ul>
        </dd>

        <dd>
            <div class="title">用户管理</div>
            <ul class="menuson">
                <li><a href="../User/ManageUser.aspx">查看用户信息</a></li>
                <li><a href="../User/ManageUser.aspx">删除用户</a></li>
            </ul>
        </dd>

        <dd>
            <div class="title">商品管理</div>
            <ul class="menuson">
                <li><a href="../Product/manageProduct.aspx">查看商品信息</a></li>
                <li><a href="../Product/AddCategoryInfo.aspx">管理商品类别</a></li>
                <li><a href="../Product/AddProduct.aspx">添加商品</a></li>
            </ul>
        </dd>

        <dd>
            <div class="title">订单管理</div>
            <ul class="menuson">
                <li><a href="../orderlist/OrderList.aspx">待付款订单</a></li>
                <li><a href="../orderlist/orderConsignMent.aspx">待发货订单</a></li>
                <li><a href="../orderlist/orderSuccendfahuo.aspx">已发货订单</a></li>
            </ul>
        </dd>

        <dd>
            <div class="title">公告管理</div>
            <ul class="menuson">
                <li><a href="../BulletinInfo/ManageBulletin.aspx">查看公告</a></li>
                <li><a href="../BulletinInfo/AddBulletin.aspx">添加公告</a></li>
            </ul>
        </dd>

        <dd>
            <div class="title">帮助管理</div>
            <ul class="menuson">
                <li><a href="../HelpInfo/ManageHelpInfo.aspx">查看帮助</a></li>
                <li><a href="../HelpInfo/AddHelper.aspx">添加帮助</a></li>
            </ul>
        </dd>

        <dd>
            <div>
                <span>
                    <img src="../images/leftico03.png" /></span>
                <a href="../AdminInfo/AdminLogin.aspx" style="color: darkviolet; font-size: medium">注销登录</a>
            </div>
        </dd>

        <dd>
            <div>
                <span>
                    <img src="../images/leftico02.png" /></span>
                <asp:LinkButton ID="linkReaset" runat="server" OnClick="linkReaset_Click" ForeColor="DarkViolet" Font-Size="Medium">退出系统</asp:LinkButton>
            </div>
        </dd>

    </dl>
</div>



<%--<div>
    <ul>        
        <li class="hmain">
            <a href="../../proscenium/Index.aspx" target="_blank">商城首页</a>
        </li>
        <li class="hmain">
            <a href="#">管理员信息</a>
            <ul>
                <li><a href="../AdminInfo/ManageAdmin.aspx">查看管理员信息</a></li>
                <li><a href="../AdminInfo/AddAdminInfo.aspx">添加管理员</a></li>
            </ul>
        </li>
        <li class="hmain">
            <a href="#">用户管理</a>
            <ul>
                <li><a href="#">查看用户信息</a></li>
                <li><a href="#">删除用户</a></li>
            </ul>
        </li>
        <li class="hmain">
            <a href="#">商品管理</a>
            <ul>
                <li><a href="../Product/manageProduct.aspx">查看产品信息</a></li>
                <li><a href="../Product/AddCategoryInfo.aspx">添加产品类别</a></li>
                <li><a href="../Product/AddProduct.aspx">添加产品</a></li>
            </ul>
        </li>
        <li class="hmain">
            <a href="#">订单管理</a>
            <ul>
                <li><a href="../orderlist/OrderList.aspx">未付款订单</a></li>
                <li><a href="../orderlist/orderConsignMent.aspx">未发货订单</a></li>
                <li><a href="../orderlist/orderSuccendfahuo.aspx">已发货订单</a></li>
            </ul>
        </li>
        <li class="hmain">
            <a href="#">公告管理</a>
            <ul>
                <li><a href="../BulletinInfo/ManageBulletin.aspx">查看公告</a></li>
                <li><a href="../BulletinInfo/AddBulletin.aspx">添加公告</a></li>
            </ul>
        </li>
        <li class="hmain">
            <a href="#">帮助管理</a>
            <ul>
                <li><a href="../HelpInfo/ManageHelpInfo.aspx">查看帮助</a></li>
                <li><a href="../HelpInfo/AddHelper.aspx">添加帮助</a></li>
            </ul>
        </li>
        <li class="hmain"><a href="../AdminInfo/AdminLogin.aspx">注销登录</a></li>
        <li class="hmain">
            <asp:LinkButton ID="linkReaset" runat="server" OnClick="linkReaset_Click">退出系统</asp:LinkButton>
        </li>
    </ul>
</div>--%>
