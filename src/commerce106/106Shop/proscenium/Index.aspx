<%@ Page Title="" Language="C#" MasterPageFile="~/proscenium/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="proscenium_Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <%# Eval("ProductName")%>
        <img src="images/�����.jpg" style="width: 1002px" />
    </div>
    <div style="margin-bottom:4px"></div>
    <div class="leftcontnav">
        <div style="background-color: lightpink; height: 611px">
            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">����</font><br />

            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ��װ
                </div>
            </a>
            <%--<asp:Repeater ID="productRepeater" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand"> 
                             <ItemTemplate>
                                <ul>
                                    <li>
                                        <div style="overflow:hidden">
                                            <ul>
                                                <li>
                                                     <a href="product/PorductInfo.aspx?Id=<%# Eval("productId")%>" title="<%# Eval("ProductName")%>" target="_blank"><%# Eval("ProductName")%>
                <%# (Eval("productName").ToString().Length>11)? Eval("productName").ToString().Substring(0,11):Eval("productName") %>
                 </a></li>
                                                
                                            </ul>
                                  </div>
                                        </li>
                                    </ul>
                                  
                             </ItemTemplate>
                             </asp:Repeater>--%>
            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    Ůװ
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">�Ҿ�</font><br />

            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    �ƾ�
                </div>
            </a>
            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ���
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">ҽ��Ʒ</font><br />

            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ���
                </div>
            </a>
            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ɴ��
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">�ճ���Ʒ</font><br />

            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ֽ��
                </div>
            </a>
            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ɡ
                </div>
            </a>
            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ϴ�ྫ
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">������Ʒ</font><br />

            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ��ë��
                </div>
            </a>
            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ȭ��
                </div>
            </a>
            <a href="product/ProductList.aspx">
                <div style="font-size: medium;" align="center">
                    ����
                </div>
            </a>
        </div>
    </div>
    <div class="rightcont" style="background-color:lightpink">

        <div style="float: left">
            <a href="product/ProductList.aspx">
                <img src="images/��ҳͼƬ1.jpg" style="text-align: center; height: 283px;" /></a>
            <br />
            <a href="product/ProductList.aspx">
                <img src="images/��ҳͼƬ2.jpg" style="text-align: center; height: 321px;" /></a>

        </div>

        <div style="float: right; width: 236px;background-color:lightpink">
            <img src="images/��ʾ��.jpg" width="236px" />
            <div style="height: 327px; width: 275px; overflow: hidden; margin-left: -50px"
                id="shopAffiche">
                <marquee id="bulletion" style="height: 327px" onmouseover="bulletion.stop()" onmouseout="bulletion.start()" scrollamount="2" direction="up">
                             <asp:Repeater ID="rpBulletinList" runat="server"> 
                             <ItemTemplate>
                                <ul>
                                    <li>
                                        <div style="overflow:hidden">
                                            <ul>
                                                <li>
                                                     <a href="BulletinInfo/BulletinInfoContent.aspx?Id=<%# Eval("Id")%>" title="<%# Eval("BulletinTitle")%>" target="_blank"><%# Eval("BulletinTitle")%></a></li>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                             </ItemTemplate>
                             </asp:Repeater></marquee>
            </div>
        </div>
    </div>


    <!--<div id="middle" style="float: left; width: 1002px;">
        <%--<div style="background-color: lightpink; width: 162px; height: 727px; margin: 0px; padding: 0px;">
            <%--<img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">����</font><br />

            <a href="#">
                <div style="font-size: medium;" align="center">
                    ��װ
                </div>
                <div style="font-size: medium;" align="center">
                    Ůװ
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">�Ҿ�</font><br />

            <a href="#">
                <div style="font-size: medium;" align="center">
                    �ƾ�
                </div>
                <div style="font-size: medium;" align="center">
                    ���
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">ҽ��Ʒ</font><br />

            <a href="#">
                <div style="font-size: medium;" align="center">
                    ���
                </div>
                <div style="font-size: medium;" align="center">
                    ɴ��
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">�ճ���Ʒ</font><br />

            <a href="#">
                <div style="font-size: medium;" align="center">
                    ֽ��
                </div>
                <div style="font-size: medium;" align="center">
                    ɡ
                </div>
                <div style="font-size: medium;" align="center">
                    ϴ�ྫ
                </div>
            </a>

            <img src="../images/i04.png" height="36px" width="36px" />
            <font size="5" style="font-family: ����">������Ʒ</font><br />

            <a href="#">
                <div style="font-size: medium;" align="center">
                    ��ë��
                </div>
                <div style="font-size: medium;" align="center">
                    ȭ��
                </div>
                <div style="font-size: medium;" align="center">
                    ����
                </div>
            </a>--%>

            <%-- <a href="#" target="rightFrame">��װ</a><br />
        <a href="#" target="rightFrame">Ůװ</a><br />

        <img src="../images/i04.png" height="24px" width="24px" />
        <font size="6">�Ҿ�</font><br />
        <a href="#" target="rightFrame">�ƾ�</a><br />
        <a href="#" target="rightFrame">���</a><br />

        <img src="../images/i04.png" height="24px" width="24px" />
        <font size="6">ҽ��Ʒ</font><br />
        <a href="#" target="rightFrame">���</a><br />
        <a href="#" target="rightFrame">ɴ��</a><br />

        <img src="../images/i04.png" height="24px" width="24px" />
        <font size="6">�ճ���Ʒ</font><br />
        <a href="#" target="rightFrame">ֽ��</a><br />
        <a href="#" target="rightFrame">ɡ</a><br />
        <a href="#" target="rightFrame">ϴ�ྫ</a><br />

        <img src="../images/i04.png" height="24px" width="24px" />
        <font size="6">������Ʒ</font><br />
        <a href="#" target="rightFrame">��ë��</a><br />
        <a href="#" target="rightFrame">ȭ��</a><br />
        <a href="#" target="rightFrame">����</a><br />
    </div>--%>


            <%--<dl class="leftcontnav" style="background-color:lightpink">

<%--        <dd>
            <span>
                <img src="../images/i04.png" height="24px" width="24px" /></span>����
                <ul class="menuson">
                    <li><cite></cite><a href="#" target="rightFrame">��װ</a><i></i></li>
                    <li><cite></cite><a href="#" target="rightFrame">Ůװ</a><i></i></li>
                </ul>
        </dd>


        <dd>
            <span>
                <img src="../images/i04.png" height="24px" width="24px" /></span>�Ҿ�
                <ul class="menuson">
                    <li><cite></cite><a href="#">�ƾ�</a><i></i></li>
                    <li><cite></cite><a href="#">���</a><i></i></li>
                </ul>
        </dd>


        <dd>
            <span>
                <img src="../images/i04.png" height="24px" width="24px" /></span>ҽ��Ʒ
                <ul class="menuson">
                    <li><cite></cite><a href="#">���</a><i></i></li>
                    <li><cite></cite><a href="#">ɴ��</a><i></i></li>
                </ul>
        </dd>


        <dd>
            <span>
                <img src="../images/i04.png" height="24px" width="24px" /></span>�ճ���Ʒ
                <ul class="menuson">
                    <li><cite></cite><a href="#">ֽ��</a><i></i></li>
                    <li><cite></cite><a href="#">ɡ</a><i></i></li>
                    <li><cite></cite><a href="#">ϴ�ྫ</a><i></i></li>
                </ul>
        </dd>

        <dd>
            <span>
                <img src="../images/i04.png" height="24px" width="24px" /></span>������Ʒ
                <ul class="menuson">
                    <li><cite></cite><a href="#">��ë��</a><i></i></li>
                    <li><cite></cite><a href="#">ȭ��</a><i></i></li>
                    <li><cite></cite><a href="#">����</a><i></i></li>
                </ul>
        </dd>

    </dl>--%>


            <!--
    <div class="leftcontnav">
        <div class="lefttop"><img src="images/shopping_11.gif" alt="¤ԭ�����̳�" /></div>
        <div id="shopPClass" class="leftcenter">
            <div class="man">
  <table cellpadding="0" cellspacing="0" class="girdView">
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/category.jpg" />
        </td>
    </tr>
    <tr>
        <td align="center">
        <%--<marquee id="bulletion" onmouseover="bulletion.stop()" onmouseout="bulletion.start()" scrollAmount=2  direction="up">--%>
            <asp:GridView ID="gvBindProductName" runat="server" AutoGenerateColumns="False" 
                BorderWidth="0px" ShowHeader="False" Width="100%" PageSize="20" EnableModelValidation="True">
            </asp:GridView>
        </td>
    </tr>
</table>
            </div>
        </div>
        <script type="text/javascript">
            pc.BindPC();
        </script>
        <div class="leftbottom"><img src="images/shopping_75.gif" alt="¤ԭ�̳�" /></div>
    </div>
    -->


    <%--   <div class="rightcont">
        <script type="text/javascript" src="../js/FlashClass.js"></script>--%>    <%--<div id="IndexSlideFlash" class="contrightleft">
                Flash���
            </div>
             <script type="text/javascript">
                 var focus_width = 540;
                 var focus_height = 293;
                 var swf_height = focus_height;
                 var pics = 'images/FlashTest_001.jpg|images/FlashTest_002.jpg|images/FlashTest_003.jpg|images/flash1.jpg|images/flash4.jpg|images/flash3.jpg';
                 var links = '|||';
                 var fVarsStr = "pics=" + pics + "&links=" + links + "&borderwidth=" + focus_width + "&borderheight=" + focus_height;
                 insertFlash('IndexSlideFlash', 'flash/focus.swf', 'FlashId_001', focus_width, focus_height, "Opaque", fVarsStr);
            </script>--%>

    <%--<div class="rightleft2" style="float:right">
                <div class="rightleftwenzi">
                    <%--<div style="height: 209px; width: 275px; overflow: hidden; margin-left: -50px"
                        id="shopAffiche">
                        <marquee id="bulletion" onmouseover="bulletion.stop()" onmouseout="bulletion.start()" scrollamount="2" direction="up">
                             <asp:Repeater ID="rpBulletinList" runat="server"> 
                             <ItemTemplate>
                                <ul>
                                    <li>
                                        <div style="overflow:hidden">
                                            <ul>
                                                <li>
                                                     <a href="BulletinInfo/BulletinInfoContent.aspx?Id=<%# Eval("Id")%>" title="<%# Eval("BulletinTitle")%>" target="_blank"><%# Eval("BulletinTitle")%></a></li>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                             </ItemTemplate>
                             </asp:Repeater></marquee>
                    </div>--%>
    <%--<div id="right" style="float:right">

            <div >
                <a href="Index.aspx">
                    <img src="images/��ҳͼƬ1.jpg" style="text-align: center; height: 283px; width: 478px" /></a>
                <br />
                <a href="Index.aspx">
                    <img src="images/��ҳͼƬ2.jpg" style="text-align: center; height: 321px; width: 478px" /></a>

            </div>

            <div style="float:right; width: 236px;">
                <img src="images/shopping_13.gif" alt="¤ԭ�̳�" />
                <div style="height: 557px; width: 275px; overflow: hidden; margin-left: -50px"
                    id="shopAffiche">
                    <marquee id="bulletion" style="height: 557px" onmouseover="bulletion.stop()" onmouseout="bulletion.start()" scrollamount="2" direction="up">
                             <asp:Repeater ID="rpBulletinList" runat="server"> 
                             <ItemTemplate>
                                <ul>
                                    <li>
                                        <div style="overflow:hidden">
                                            <ul>
                                                <li>
                                                     <a href="BulletinInfo/BulletinInfoContent.aspx?Id=<%# Eval("Id")%>" title="<%# Eval("BulletinTitle")%>" target="_blank"><%# Eval("BulletinTitle")%></a></li>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                             </ItemTemplate>
                             </asp:Repeater></marquee>
                </div>
            </div>
        </div>--%>

    <%--   <script type="text/javascript">
                    try {
                        slideLine('shopAffiche', 3000, 5, 20);
                    } catch (e) { }
                </script>--%>    <%--<div class="leftzc">
                    <a href="../user/UserRegister.aspx" title="">
                        <img src="images/shopping_38.gif" alt="��Աע��" style="border: 0px;" /></a>&nbsp;&nbsp;&nbsp;&nbsp;
                   
                    <a href="HelpInfo/HelpList.aspx" title="��������" target="_blank">
                        <img src="images/shopping_40.gif" alt="��������" style="border: 0px;" /></a>
                </div>--%>    <%--<div class="contertwo">
    <div class="banertwo"><img src="images/logo3.png" alt="¤ԭ�̳�" style="width: 991px; height: 82px" /></div>
    <div class="manandwomen">
        <div class="manandwomentop"><img src="images/shopping_78.gif" alt="��Ů��װ" /></div>
        <div class="manandwomencont">
            <div id="childClassList_001" class="manandwomenbt">
                <ul>
                    <li>�������ˣ����ǵķ�װ������</li>
                </ul>
            </div>
            <script type="text/javascript">
                pc.GetChildClassList("childClassList_001", 1);
            </script>
            <div class="manandwomenyanse">
                <div class="manandwomenys">
                    <div class="manandwomenleft">
                        <div class="manandwomenleftbt"><strong>��װ��������</strong></div>
                        <div class="manandwomenleftline"></div>
                        <div class="manandwomenleftwenzi">
                            <ul>
                                <asp:Repeater ID="rpIsCommendDress_001" runat="server">
                                  <ItemTemplate>
                                    <li>&nbsp;
                                        <a href="product/ProductInfo.aspx?Pid=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                        <%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>15)?Eval("productName").ToString().Substring(1,15):Eval("productName")%></a></li>
                                  </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="manandwomenright">
                        <div class="manandwomenline"><img src="images/index_07.gif" alt="��Դ�̳�" /></div>
                        <div class="manandwomenneir">
                            <div class="manandwomenneirone">
                                <asp:DataList ID="ddlBindProductIndexShow" runat="server" RepeatColumns="4" 
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                              <div class="manandwomenrnoe1"><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage","~/photo/{0}") %>' AlternateText='<%# Eval("productName","{0}")%>' /></a>
                                            <ul>
                                                <li><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                                <%# (Eval("productName").ToString().Length>14?Eval("productName").ToString().Substring(1,14):Eval("productName"))%></a></li>
                                                <li id="money" class="curreentprice"><strong><span><%# Eval("Price", "{0:C2}")%></span></strong></li>
                                                <li ><strong>�ּۣ�<span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                            </ul>
                                        </div>
                                        <%# (Container.ItemIndex+1==4)?"<div style=\" background:none; height:4px; overflow:hidden;\"></div>":" " %>
                                    </ItemTemplate>
                                </asp:DataList>          
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>            
        <div class="manandwomenfoot"><img src="images/shopping_106.gif" alt="¤ԭ�̳�" /></div>
        </div>
        <div class="sports">
            <div class="sportstop"><img src="images/shopping_78.gif" alt="¤ԭ�̳�"/></div>
            <div class="sportscont">
                <div id="childClassList_002" class="sportsbt">
                    <ul>
                        <li>���⽡���ߣ���ѡ���ǰ�</li>
                    </ul>
                </div>
                <script type="text/javascript">
                    pc.GetChildClassList("childClassList_002", 2);
                </script>
                <div class="spostsyanse">
                    <div class="sportsys">
                        <div class="sportsleft">
                            <div class="sportsleftbt"><strong>�˶�����������Ʒ�Ƽ���</strong></div>
                            <div class="sportsleftline"></div>
                            <div class="sportsleftwenzi">
                                <ul>
                                    <asp:Repeater ID="rpIsCommendSports_001" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            &nbsp;<a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank"><%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>15)?Eval("productName").ToString().Substring(0,15):Eval("productName") %></a></li>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>
                        </div>
                        <div class="sportsright">
                            <div class="sportsline"><img src="images/index_11.gif" alt="¤ԭ�̳�" /></div>
                            <div class="sportsneir">
                                <div class="sportsneirone">
                                   <asp:DataList ID="ddlBindIndexSports" runat="server" RepeatColumns="4" 
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                              <div class="manandwomenrnoe1"><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage","~/photo/{0}") %>' AlternateText='<%# Eval("productName","{0}")%>' /></a>
                                            <ul>
                                                <li><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                                <%# (Eval("productName").ToString().Length>14?Eval("productName").ToString().Substring(1,14):Eval("productName"))%></a></li>
                                                <li id="money" class="curreentprice"><strong><span><%# Eval("Price", "{0:C2}")%></span></strong></li>
                                                <li ><strong>�ּ�:<span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                            </ul>
                                        </div>
                                        <%# (Container.ItemIndex+1==4)?"<div style=\" background:none; height:4px; overflow:hidden;\"></div>":" " %>
                                    </ItemTemplate>
                                </asp:DataList>    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sportsfoot"><img src="images/shopping_106.gif" alt="¤ԭ�̳�" /></div>
        </div>
    </div>
    <div class="banerthere"><img src="images/indexsss.png" alt="¤ԭ�̳�" style="width: 990px" /></div>
    <div class="fashionjewelry">
        <div class="fashionjewelrytop"><img src="images/shopping_78.gif" alt="¤ԭ�̳�" /></div>
        <div class="fashionjewelrycont">
                 <div id="childClassList_003" class="fashionjewelrybt">
                <ul>
                    <li>���Ь����Ʒ�����������</li></ul>
            </div>
            <script type="text/javascript">
                pc.GetChildClassList("childClassList_003", 3);
            </script>
            <div class="fashionjewelryyanse">
                <div class="fashionjewelryys">
                    <div class="fashionjewelryleft">
                        <div class="fashionjewelryleftbt"><strong>Ь����Ʒ��������</strong></div>
                        <div class="fashionjewelryleftline"></div>
                        <div class="fashionjewelryleftwenzi">
                            <ul>
                                <asp:Repeater ID="rpBindFashionJewelryBind_001" runat="server">
                                <ItemTemplate>
                                    <li>&nbsp;<a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank"><%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>15)?Eval("productName").ToString().Substring(0,15):Eval("productName")%></a></li>
                                </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="fashionjewelryright">
                        <div class="fashionjewelryline"><img src="images/index_13.gif" alt="¤ԭ�̳�" /></div>
                        <div class="fashionjewelryneir">
                            <div class="fashionjewelryneirone">
                                 <asp:DataList ID="ddlBindFashionJewelry" runat="server" RepeatColumns="4" 
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                              <div class="manandwomenrnoe1"><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage","~/photo/{0}") %>' AlternateText='<%# Eval("productName","{0}")%>' /></a>
                                            <ul>
                                                <li><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                                <%# (Eval("productName").ToString().Length>14?Eval("productName").ToString().Substring(1,14):Eval("productName"))%></a></li>
                                                <li id="money" class="curreentprice"><strong><span><%# Eval("Price", "{0:C2}")%></span></strong></li>
                                                <li ><strong>�ּ�:<span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                            </ul>
                                        </div>
                                        <%# (Container.ItemIndex+1==4)?"<div style=\" background:none; height:4px; overflow:hidden;\"></div>":" " %>
                                    </ItemTemplate>
                                </asp:DataList>    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="fashionjewelryfoot"><img src="images/shopping_106.gif" alt="¤ԭ�̳�" /></div>
    </div>
    <div class="itfigure">
        <div class="itfiguretop"><img src="images/shopping_78.gif" alt="¤ԭ�̳�" /></div>
        <div class="itfigurecont">
           <div id="childClassList_004" class="itfigurebt">
                <ul>
                    <li>21���͵���Ů˧����ϲ�������붫��Ŷ</li>
                </ul>
            </div>
            <script type="text/javascript">
                pc.GetChildClassList("childClassList_004", 4);
            </script>
            <div class="itfigureyanse">
                <div class="itfigureys">
                    <div class="itfigureleft">
                        <div class="itfigureleftbt"><strong>�����Ʒ��������</strong></div>
                        <div class="itfigureleftline"></div>
                        <div class="itfigureleftwenzi">
                            <ul>
                                <asp:Repeater ID="rpBindIndexITFigure_001" runat="server">
                                    <ItemTemplate>
                                        <li>&nbsp;<a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank"><%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>15)?Eval("productName").ToString().Substring(0,15):Eval("productName")%></a></li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="itfigureright">
                        <div class="itfigureline"><img src="images/index_15.gif" alt="¤ԭ�̳�" /></div>
                        <div class="itfigureneir">
                            <div class="itfigureneirone">
                                   <asp:DataList ID="ddlBindIndexITfigure" runat="server" RepeatColumns="4" 
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                              <div class="manandwomenrnoe1"><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage","~/photo/{0}") %>' AlternateText='<%# Eval("productName","{0}")%>' /></a>
                                            <ul>
                                                <li><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                                <%# (Eval("productName").ToString().Length>14?Eval("productName").ToString().Substring(1,14):Eval("productName"))%></a></li>
                                                <li id="money" class="curreentprice"><strong><span><%# Eval("Price", "{0:C2}")%></span></strong></li>
                                                <li ><strong>�ּ�:<span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                            </ul>
                                        </div>
                                        <%# (Container.ItemIndex+1==4)?"<div style=\" background:none; height:4px; overflow:hidden;\"></div>":" " %>
                                    </ItemTemplate>
                                </asp:DataList>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="itfigurefoot"><img src="images/shopping_106.gif" alt="¤ԭ�̳�" /></div>
    </div>
    <div class="banerfoot"><img src="images/T1pbuHXklwXXXXXXXX.jpg" alt="¤ԭ�̳�" style="width: 992px" /></div>
    
    <div class="beauty">
        <div class="beautytop"><img src="images/shopping_78.gif" alt="¤ԭ�̳�" /></div>
        <div class="beautycont">
            <div id="childClassList_005" class="beautybt">
                <ul>
                    <li>����������ϲ���Ķ�������������</li>
                </ul>
            </div>
              <script type="text/javascript">
                  pc.GetChildClassList("childClassList_005", 5);
            </script>
            <div class="beautyyanse">
                <div class="beautyys">
                    <div class="beautyleft">
                        <div class="beautyleftbt"><strong>���ݻ������²�Ʒ����</strong></div>
                        <div class="beautyleftline"></div>
                        <div class="beautyleftwenzi">
                            <ul>
                                <asp:Repeater ID="rpBindIndexLeftSkinBeauty_001" runat="server">
                                <ItemTemplate>
                                <li>&nbsp;<a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank"><%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>15)?Eval("productName").ToString().Substring(0,15):Eval("productName")%></a></li>
                                </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="beautyright">
                        <div class="beautyline"><img src="images/index_07.gif" alt="¤ԭ�̳�" /></div>
                        <div class="beautyneir">
                            <div class="beautyneirone">
                                 <asp:DataList ID="ddlBindIndexRightSkinBeauty" runat="server" RepeatColumns="4" 
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                              <div class="manandwomenrnoe1"><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage","~/photo/{0}") %>' AlternateText='<%# Eval("productName","{0}")%>' /></a>
                                            <ul>
                                                <li><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                                <%# (Eval("productName").ToString().Length>14?Eval("productName").ToString().Substring(1,14):Eval("productName"))%></a></li>
                                                <li id="money" class="curreentprice"><strong><span><%# Eval("Price", "{0:C2}")%></span></strong></li>
                                                <li ><strong>�ּ�:<span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                            </ul>
                                        </div>
                                        <%# (Container.ItemIndex+1==4)?"<div style=\" background:none; height:4px; overflow:hidden;\"></div>":" " %>
                                    </ItemTemplate>
                                </asp:DataList> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="beautyfoot"><img src="images/shopping_106.gif" alt="¤ԭ�̳�" /></div>
    </div>
    <div class="food">
        <div class="foodtop"><img src="images/shopping_78.gif" alt="¤ԭ�̳�" /></div>
        <div class="foodcont">
            <div id="childClassList_006" class="foodbt">
                <ul>
                    <li>˭֪���вͣ�����������</li>
                </ul>
            </div>
             <script type="text/javascript">
                 pc.GetChildClassList("childClassList_006", 7);
            </script>
            <div class="foodyanse">
                <div class="foodys">
                    <div class="foodleft">
                        <div class="foodleftbt"><strong>ʳƷ�����������а�</strong></div>
                        <div class="foodleftline"></div>
                        <div class="foodleftwenzi">
                            <ul>
                                 <asp:Repeater ID="rpBindIndexleftFood_001" runat="server">
                                    <ItemTemplate>
                                        <li>&nbsp;<a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName") %>" target="_blank"><%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>15)?Eval("productName").ToString().Substring(0,15):Eval("productName")%></a></li>
                                    </ItemTemplate>
                                 </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="foodright">
                        <div class="foodline"><img src="images/index_11.gif" alt="¤ԭ�̳�" /></div>
                        <div class="foodneir">
                            <div class="foodneirone">
                                 <asp:DataList ID="ddlBindIndesFoodRight" runat="server" RepeatColumns="4" 
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                              <div class="manandwomenrnoe1"><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage","~/photo/{0}") %>' AlternateText='<%# Eval("productName","{0}")%>' /></a>
                                            <ul>
                                                <li><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                                <%# (Eval("productName").ToString().Length>14?Eval("productName").ToString().Substring(1,14):Eval("productName"))%></a></li>
                                                <li id="money" class="curreentprice"><strong><span><%# Eval("Price", "{0:C2}")%></span></strong></li>
                                                <li ><strong>�ּ�:<span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                            </ul>
                                        </div>
                                        <%# (Container.ItemIndex+1==4)?"<div style=\" background:none; height:4px; overflow:hidden;\"></div>":" " %>
                                    </ItemTemplate>
                                </asp:DataList> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="foodfoot"><img src="images/shopping_106.gif" alt="¤ԭ�̳�" /></div>
    </div>
    <div><img src="images/footindexww.jpg" alt="¤ԭ�̳�" style="width: 989px" /></div>
    <div class="book">
        <div class="booktop"><img src="images/shopping_78.gif" alt="¤ԭ�̳�" /></div>
        <div class="bookcont">
            <div id="childClassList_007" class="bookbt">
                <ul>
                    <li>�ഺ��ѧ����ʷ���飬�ִ��Ƽ����鼮��������</li>
                </ul>
            </div>   
            <script type="text/javascript">
                pc.GetChildClassList("childClassList_007", 7);
            </script>
            <div class="bookyanse">
                <div class="bookys">
                    <div class="bookleft">
                        <div class="bookleftbt"><strong>ͼ�����������а�</strong></div>
                        <div class="bookleftline"></div>
                        <div class="bookleftwenzi">
                            <ul>
                                <asp:Repeater ID="rpBindindexBook_001" runat="server">
                                <ItemTemplate>
                                    <li>&nbsp;<a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank"><%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>15)?Eval("productName").ToString().Substring(0,15):Eval("productName")%></a></li>
                                </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                    <div class="bookright">
                        <div class="bookline"><img src="images/index_21.gif" alt="¤ԭ�̳�" /></div>
                        <div class="bookneir">
                            <div class="bookneirone">
                                 <asp:DataList ID="ddlBindIndexRightbook" runat="server" RepeatColumns="4" 
                                    RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                              <div class="manandwomenrnoe1"><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" target="_blank">
                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage","~/photo/{0}") %>' AlternateText='<%# Eval("productName","{0}")%>' /></a>
                                            <ul>
                                                <li><a href="product/ProductInfo.aspx?PId=<%# Eval("productID")%>" title="<%# Eval("productName")%>" target="_blank">
                                                <%# (Eval("productName").ToString().Length>14?Eval("productName").ToString().Substring(1,14):Eval("productName"))%></a></li>
                                                <li id="money" class="curreentprice"><strong><span><%# Eval("Price", "{0:C2}")%></span></strong></li>
                                                <li ><strong>�ּ�:<span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                            </ul>
                                        </div>
                                        <%# (Container.ItemIndex+1==4)?"<div style=\" background:none; height:4px; overflow:hidden;\"></div>":" " %>
                                    </ItemTemplate>
                                </asp:DataList> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bookfoot"><img src="images/shopping_106.gif" alt="¤ԭ�̳�"/></div>
    </div>--%>

    <div class="contertwo">\
        <div style="color: #ff9f00; font-family: ����; font-size: large;">
            <h3>
                ���Ƽ���Ʒ
            </h3>
        </div>

        <div class="righttwocont">
            <div class="righttwocont1" style="width: 1002px">
                <div class="contchanpin">
                    <asp:Repeater ID="rpIsComnend" runat="server">
                        <ItemTemplate>
                            <div class="contchanpin1">
                                <div class="chanpinimg">
                                    <a href="product/ProductInfo.aspx?Pid=<%# Eval("productID")%>" title="<%# Eval("ProductName")%>" target="_blank">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/photo/"+Eval("ProductImage").ToString()%>' AlternateText='<%# Eval("productName","{0}") %>' /></a>
                                </div>
                                <div class="chanppinwenzi">
                                    <ul>
                                        <li><a href="product/ProductInfo.aspx?Pid=<%# Eval("ProductID")%>" title="<%# Eval("ProductName")%>" target="_blank">
                                            <%# (Eval("productName").ToString().Length>11)? Eval("productName").ToString().Substring(0,11):Eval("productName") %><br />
                                        </a></li>
                                        <li id="money"><strong><span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                                    </ul>
                                </div>
                            </div>
                            <%# (Container.ItemIndex+1==4)?"<div class=\"chanpinline\"></div>":"" %>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
    <div class="rightcont3">
        <div style="color:#ff9f00; font-family: ����; font-size: large;">
            <h3>
                �����Ź�ע
            </h3>
        </div>
        <div class="rightcont3cent">
            <asp:Repeater ID="rpIsBindHot" runat="server">
                <ItemTemplate>
                    <div class="contchanpin2">
                        <div class="chanpinimg">
                            <a href="product/ProductInfo.aspx?Pid=<%# Eval("productID")%>" title="<%# Eval("ProductName")%>" target="_blank">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/photo/"+Eval("ProductImage").ToString()%>' AlternateText='<%# Eval("productName","{0}") %>' /></a>
                        </div>
                        <div class="chanppinwenzi">
                            <ul>
                                <li><a href="product/ProductInfo.aspx?Pid=<%# Eval("ProductID")%>" title="<%# Eval("ProductName")%>" target="_blank">
                                    <%# (Eval("productName").ToString().Length>11)? Eval("productName").ToString().Substring(0,11):Eval("productName") %><br />
                                </a></li>
                                <li id="money"><strong><span class="red"><%# Eval("MenberPrince", "{0:C2}")%></span></strong></li>
                            </ul>
                        </div>
                    </div>
                    <%# (Container.ItemIndex+1==4)?"<div class=\"chanpinline\"></div>":"" %>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>

