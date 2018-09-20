<%@ Control Language="C#"  AutoEventWireup="true" CodeFile="List.ascx.cs" Inherits="Tool_List" %>

<link href="../../css/left.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="../../js/jquery.js"></script>

<script type="text/javascript">
    $(function () {
        //导航切换

        $('.title').click(function () {
            var $ul = $(this).next('ul');
            //$('dd').find('ul').slideUp();
            if ($ul.is(':visible')) {
                $(this).next('ul').slideUp();
            } else {
                $(this).next('ul').slideDown();
            }
        });/**/
    })
</script>
<style type="text/css">
    .none:hover{
        color:#000000;
        cursor:pointer;
    }
</style>
<dl class="leftmenu">

    <dd><div class="title"><a href="../index.aspx" class="none">返回首页</a></div></dd>

    <dd><div class="title">收货地址</div>
    <ul class="menuson">
        <li><a href="../AcceptAddrInfo/ManageAcceptAddr.aspx">管理收货地址</a><i></i></li>
        <li><a href="../AcceptAddrInfo/AddAcceptAddr.aspx">添加收货地址</a><i></i></li>
        <li><a href="../AcceptAddrInfo/ManageAcceptAddr.aspx">删除收货地址</a><i></i></li>
        <li><a href="../AcceptAddrInfo/ManageAcceptAddr.aspx">修改收货地址</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd><div class="title">个人管理</div>
    <ul class="menuson">
        <li><a href="#" title="修改用户信息">修改用户信息</a><i></i></li>
        <li><a href="../User/UpdatePassword.aspx" title="修改密码">修改密码</a><i></i></li>
        </ul>     
    </dd> 
    
    
    <dd><div class="title">我的订单</div>
    <ul class="menuson">
        <li><a href="../AcceptAddrInfo/ManagerOrderList.aspx">订单管理</a><i></i></li>
        <li><a href="../AcceptAddrInfo/OrderList.aspx">订单明细</a><i></i></li>
        <li><a href="../AcceptAddrInfo/OrderList.aspx">付款</a><i></i></li>
        <li><a href="#">敬请期待</a><i></i></li>
    </ul>    
    </dd>  
    
    <dd><div class="title">敬请期待</div>
    <ul class="menuson">
        <li><a href="#">敬请期待</a><i></i></li>
        <li><a href="#">敬请期待</a><i></i></li>
        <li><a href="#">敬请期待</a><i></i></li>
        <li><a href="#">敬请期待</a><i></i></li>
    </ul>    
    </dd>    
    
</dl>
