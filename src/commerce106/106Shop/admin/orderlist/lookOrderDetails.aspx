<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="lookOrderDetails.aspx.cs" Inherits="admin_orderlist_lookOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="AdminNav">
        <div>
            <ul>
                <li class="now"><a href="#" title="�ȴ������">�ȴ������</a></li>
                &nbsp;
           
                <li><a href="#" title="�ȴ���������">�ȴ���������</a></li>
                <li><a href="#" title="�ɽ�����">�ɽ�����</a></li>
                <li><a href="#" title="ȡ������">ȡ������</a></li>
            </ul>
        </div>
    </div>--%>
    <div>
        <table align="center" cellpadding="0" cellspacing="0"
            style="width: 985px; border: 1px solid #FF00FF">
            <tr>
                <td style="font-size: 28px; font-weight: bold; color: #FFFFFF; font-style: normal; background-color: #99CCFF;">������Ʒ����</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvMinuterOrderList" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                        Width="100%" AutoGenerateColumns="False"
                        OnRowDataBound="gvMinuterOrderList_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="��ƷͼƬ">
                                <ItemTemplate>
                                    <asp:Image ID="imgSmall" runat="server" Width="80px" Height="60px" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ProNumber" HeaderText="��Ʒ�ͺ�" ReadOnly="True">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="��Ʒ����" DataField="productName">
                                <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="������" DataField="orderID">
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="��Ʒ����" DataField="memberPrice"
                                DataFormatString="{0:C2}" HtmlEncode="False">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="��������" DataField="bugNum" HtmlEncode="False">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="��ݷ�" DataField="Freign" DataFormatString="{0:C2}">
                                <ItemStyle Width="120px" />
                            </asp:BoundField>
                        </Columns>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <EmptyDataTemplate>
                            <div>���������û���κβ�Ʒ!!�����������¶����ڲ鿴</div>
                        </EmptyDataTemplate>
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle HorizontalAlign="Center" BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <RowStyle Height="30px" HorizontalAlign="Center" BackColor="#FFF7E7" ForeColor="#8C4510" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnResent" runat="server" Text="������תҳ"
                        OnClick="btnResent_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

