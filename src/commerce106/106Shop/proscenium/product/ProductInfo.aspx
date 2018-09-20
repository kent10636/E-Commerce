<%@ Page Title="" Language="C#" MasterPageFile="~/proscenium/MasterPage.master" AutoEventWireup="true" CodeFile="ProductInfo.aspx.cs" Inherits="proscenium_product_ProductInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../css/Logo.css" rel="stylesheet" type="text/css" />
    <link href="../../css/foot.css" rel="stylesheet" type="text/css" />
    <link href="../../css/product.css" rel="stylesheet" type="text/css" />
    <script src="../../js/CartJs.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div class="products">
        <div class="productsone">
            <div class="productsleft">
                <div class="productsnews">
                    <img src="../images/Products_12.gif" alt="¤ԭ�̳�" />
                    <div class="tuijian">
                        <ul>
                             <asp:Repeater ID="rpIsCommendDress_001" runat="server">
                                 <ItemTemplate>
                                     <li>&nbsp;
                                         <a href="ProductInfo.aspx?Pid=<%# Eval("productID")%>" title="<%# Eval("productName")%>">
                                         <%# Container.ItemIndex+1%>��<%# (Eval("productName").ToString().Length>13)?Eval("productName").ToString().Substring(0,13):Eval("productName")%></a></li>
                                  </ItemTemplate>
                             </asp:Repeater>
                         </ul>
                    </div>
                </div>
            </div>
            <div class="productsright">
                <div class="productsrighttop"><img src="../images/Products_03.gif" alt="¤ԭ�̳�" /></div>
                <div class="productsrightcont">
                    <div class="productsdetails">
                        <asp:Literal ID="liClass" runat="server"></asp:Literal>
                    </div>
                    <div class="ProDetails">
                        <div class="ProImg">
                            <div>
                              <img src='<%="../../photo/"+pInfo.ProductImage%>' alt="<%=pInfo.ProductName%>" style="width:100%; height:100%; cursor:pointer;" alt="¤ԭ�̳�" />
                            </div>
                        </div>
                        <div class="ProParameter">
                            <table cellpadding="0" cellspacing="0" style="margin:5px;">
                                <tr>
                                    <td style="height:32px; line-height:32px; font-size:14px; font-weight:bold; color:#AE0286; padding-left:5px;" colspan="4">
                                        <img src="../images/Productsgoumaizztu_06.gif" alt="ָʾ" style="width:24px; height:18px; vertical-align:middle;"/><span><%= pInfo.ProductName%></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="name">�г��۸�</td>
                                    <td class="value"><span class="red"><%=string.Format("{0:C2}",pInfo.Price)%></span>Ԫ</td>
                                    <td class="name">�Żݼ۸�</td>
                                    <td class="value"><span class="red"><%=string.Format("{0:C2}",pInfo.MenberPrince)%></span>Ԫ</td>
                                </tr>
                                <tr>
                                    <td class="name" style="height:16px;">��ݷѣ�</td>
                                    <td class="value" style="height:16px;"><span class="red"><%=string.Format("{0:C2}",pInfo.Freight)%></span>Ԫ</td>
                                    <td class="name" style="height:16px;">���Ͻ�ʡ��</td>
                                    <td class="value" style="height:16px;"><span class="red"><%=string.Format("{0:C2}",pInfo.Price-pInfo.MenberPrince) %></span>Ԫ</td>
                                </tr>
                                <tr>
                                    <td class="name" style="height:16px;">�ϼ����ڣ�</td>
                                    <td class="value" style="height:16px;"><span class="red"><%=pInfo.Addtime.ToShortDateString()%></span></td>
                                    <td class="name" style="height:16px;">��Ч���ڣ�</td>
                                    <td class="value" style="height:16px;">��ʣ<span class="red"><%=remainDayNum %></span>��</td>
                                </tr>
                                <tr>
                                    <td class="name" style="height:16px;">��������</td>
                                    <td class="value" style="height:16px;"><span class="red">10</span></td>
                                    <td class="name" style="height:16px;">�������</td>
                                    <td class="value" style="height:16px;"><span class="red"><%=pInfo.ClickNum %></span>&nbsp;��</td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="height:5px; overflow:hidden;"></td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:left; padding-left:15px;">
                                        ��������<input type="text" id="txtBuyNum" style="width:50px; height:14px; line-height:14px;" maxlength="10" value="1" />&nbsp;&nbsp;&nbsp;&nbsp;
                                        <!--<asp:TextBox ID="txtBuyNum" runat="server" style=" width:50px; height:14px; line-height:14px;" MaxLength="10" Text ="1"></asp:TextBox>-->
                                        ��Ʒ����<span class="red"><%=pInfo.ProducStore %></span><%=pInfo.Danwei%>
                                        <input id="txtBuyBigNum" type="hidden" value="<%=pInfo.ProducStore%>" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="text-align:center; padding-left:15px; padding-top:8px;">
                                   <asp:ImageButton ID="imgBuyProduct" runat="server" ImageUrl="~/proscenium/images/��ӵ����ﳵ.jpg" ToolTip="����" onclick="imgBuyProduct_Click" Height="73px" Width="222px" />
                                    </td>
                                </tr>
                                
                            </table>
                            <div class="cartline"></div>
                        </div>
                    </div>
                    <div class="detailstwo">
                        <div class="detailstwo1"><img src="../images/Productsgoumaizz_06.gif" alt="¤ԭ�̳�" /></div>
                        <div class="detailstwo2">
                            <div class="detailstwobz" style="background-color: #CCCCCC">
                                <ul>
                                    <li style="color:#0066FF;"><strong>��Ʒ����trong></li>
                                </ul>
                            </div>
                        </div>
                        <div class="detailsfor">
                            &nbsp;&nbsp;&nbsp;<%=pInfo.ProductDesc%>
                        </div>
                    </div>
                </div>
                <div class="productsrightfoot"><img src="../images/Products_21.gif" alt="¤ԭ�̳�"/></div>
            </div>
        </div>
  </div>
    <asp:TextBox ID="txtId" runat="server" Visible="false"></asp:TextBox>
    </strong>
</asp:Content>

