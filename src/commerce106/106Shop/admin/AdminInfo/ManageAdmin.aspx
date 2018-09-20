<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="ManageAdmin.aspx.cs" Inherits="admin_AdminInfo_ManageAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div class="AdminNav">
        <div>
            <ul>
                <li class="now"><a href="AddAdminInfo.aspx" title="��ӹ���Ա��Ϣ">��ӹ���Ա</a></li>
                <li><a href="ManageAdmin.aspx" title="�������Ա��Ϣ">�������Ա</a></li>
                <li><a href="AdminUpdatePwd.aspx" title="�޸Ĺ���Ա��Ϣ">�޸�����</a></li>
            </ul>
        </div>
    </div>--%>
    <div>

        <table align="right" cellpadding="0" cellspacing="0"
            style="width: 985px; border: 1px solid #CCFF99">
            <tr>
                <td align="center"
                    style="background-color: #C0C0C0; font-size: 22px; font-weight: bold;">�鿴����Ա��Ϣ</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="gvmanagerAdmin" runat="server" BackColor="#DEBA84"
                        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                        CellSpacing="2" AutoGenerateColumns="False" AllowPaging="True"
                        OnPageIndexChanging="gvmanagerAdmin_PageIndexChanging"
                        OnRowCancelingEdit="gvmanagerAdmin_RowCancelingEdit"
                        OnRowDataBound="gvmanagerAdmin_RowDataBound"
                        OnRowDeleting="gvmanagerAdmin_RowDeleting"
                        OnRowEditing="gvmanagerAdmin_RowEditing" PageSize="5"
                        OnRowUpdating="gvmanagerAdmin_RowUpdating" Width="985px" EnableModelValidation="True">
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <Columns>
                            <asp:BoundField DataField="AdminID" HeaderText="����ԱID" ReadOnly="True" />
                            <asp:BoundField DataField="AdminName" HeaderText="����Ա����" />
                            <asp:BoundField DataField="adminType" HeaderText="����Ա����" />
                            <asp:TemplateField HeaderText="����Ա״̬">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="lblEnabled" Text='<%#(System.Int16) DataBinder.Eval(Container.DataItem,"IsEnabled")==1?"����":"����" %>' CommandArgument='<%# DataBinder.Eval(Container.DataItem,"AdminID") %>'>'</asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="LastLoginTime" HeaderText="ע��ʱ��" ReadOnly="True" />
                            <asp:TemplateField HeaderText="ɾ������Ա">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Delete" OnClientClick="return confirm('��ȷ��ɾ���ù���Ա��')" CausesValidation="False" ToolTip="ɾ��"><img src="../images/cancel.png" alt="�޸�" width="20px" height="20px" /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="����Ա����">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbtnSetRole" runat="server" CommandName="Update" Text='<%#(System.Int16) DataBinder.Eval(Container.DataItem,"IsEnabled")==1?"���ù���Ա":"���ù���Ա" %>' CommandArgument='<%# DataBinder.Eval(Container.DataItem,"AdminID") %>'>'</asp:LinkButton>
                                </ItemTemplate>
                                <ControlStyle ForeColor="Red" />
                                <ItemStyle ForeColor="Red" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <%-- <tr>
                <td style="color: #000080; font-weight: bold; font-size: 14px;">
                <br />
                ע�⣺ϵͳ���ù���Ա��¼����admin,���룺admin&nbsp; �����ع������Ա</td>
            </tr>--%>
        </table>

    </div>
</asp:Content>

