<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="OrderList.aspx.cs" Inherits="admin_orderlist_OrderList" %>

<%@ Register Src="../tool/myPagelist.ascx" TagName="myPagelist" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="AdminNav">
        <div>
            <ul>
                <li class="now"><a href="#" title="�ȴ������">�ȴ������</a></li>
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
                <td style="font-size: 28px; font-weight: bold; color: #FFFFFF; font-style: normal; background-color: #99CCFF;">�������</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvBindAdminOrderList" runat="server"
                        AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                        Width="100%" OnRowDataBound="gvBindAdminOrderList_RowDataBound"
                        OnRowCommand="gvBindAdminOrderList_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="orderID" HeaderText="������">
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="�����ܼ�">
                                <ItemTemplate>
                                    <asp:Label ID="lblOrderPT" runat="server"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="80px" ForeColor="Red" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="����״̬">
                                <ItemTemplate>
                                    <asp:Label ID="lblOrderState" runat="server"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="100px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="acceptName" HeaderText="�ջ���">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="acceptAddr" HeaderText="�ջ���ַ">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="handset" HeaderText="�ֻ���">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="zipCode" HeaderText="�ʱ�" />
                            <asp:BoundField DataField="orderTime" DataFormatString="{0:d}"
                                HeaderText="�µ�ʱ��" HtmlEncode="False">
                                <ItemStyle Width="100px" />
                            </asp:BoundField>
                            <asp:ButtonField ButtonType="Button" CommandName="del" Text="ȡ������"
                                HeaderText="ȡ������">
                                <ItemStyle Width="80px" />
                            </asp:ButtonField>
                        </Columns>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <EmptyDataTemplate>
                            <div>û�еȴ������!!</div>
                        </EmptyDataTemplate>
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle HorizontalAlign="Center" CssClass="HeaderStyle" />
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <RowStyle Height="30px" HorizontalAlign="Center" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <uc1:myPagelist ID="pList8517" runat="server" />
                </td>
            </tr>
            <%--<tr>
                <td style="color: #000080">ע:��Щ��Ϣ�ǳ���Ҫ�������Ա���Ʊ���</td>
            </tr>--%>
        </table>

    </div>
</asp:Content>

