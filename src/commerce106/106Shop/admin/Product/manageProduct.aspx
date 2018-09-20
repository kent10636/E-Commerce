<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="manageProduct.aspx.cs" Inherits="admin_Product_manageProduct" %>

<%@ Register Src="../tool/myPagelist.ascx" TagName="myPagelist" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function selAll(boolValue) {
            var obj = document.getElementsByName("cbName");
            var cbNameLen = obj.length;
            if (cbNameLen > 1) {
                for (var i = 0; i < cbNameLen; i++) {
                    if (obj[i].checked) {
                        obj[i].checked = false;
                    }
                    else {
                        obj[i].checked = true;
                    }
                }

            }
            else {
                obj.checked = boolValue;
            }
        }

        function clickBtnCheck() {
            var obj = document.getElementsByName("cbName");
            var cbNameLen = obj.length;
            var Flag = false;
            if (cbNameLen > 0) {
                for (var i = 0; i < cbNameLen; i++) {
                    if (obj[i].checked) {
                        Flag = true;
                        break;
                    }
                }
                if (Flag) {
                    return true;
                }
                else {
                    alert("����ѡ��Ҫ�����ļ�¼����");
                    return false;
                }
            }
            else {
                alert("����û�м�¼�����ܲ�������");
                return false;
            }
        }
    </script>
    <div>
        <%--<div class="AdminNav">
            <div>
                <ul>
                    <li><a href="AddProduct.aspx">��Ӳ�Ʒ</a></li>
                    <li><a href="manageProduct.aspx">�����Ʒ</a></li>
                    <li><a href="manageProduct.aspx">�Ƽ���Ʒ</a></li>
                    <li><a href="manageProduct.aspx">�¼ܲ�Ʒ</a></li>
                    <li><a href="AddCategoryInfo.aspx">��Ʒ���</a></li>
                </ul>
            </div>
        </div>--%>
        <div id="AdminContent">

            <table align="center" cellpadding="0" cellspacing="0"
                style="width: 985px; border: 1px solid #00FFFF">
                <tr>
                    <td style="background-color: #99CCFF; font-size: 28px; font-weight: bold; font-variant: normal; color: #FFFFFF;"
                        align="center" colspan="3">
                        <asp:Label ID="lblshow" runat="server" Text="��Ʒ�嵥" Font-Size="28px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False"
                            OnRowDataBound="gvProduct_RowDataBound" BackColor="LightGoldenrodYellow"
                            BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black"
                            GridLines="None" Width="100%">
                            <Columns>
                                <asp:TemplateField HeaderText="&lt;input type='checkbox' id='cbAll' name='cbAll' onclick='selAll(this.checked);' /&gt;��ѡ">
                                    <ItemTemplate>
                                        <input type="checkbox" id="cbName" name="cbName" value='<%# DataBinder.Eval(Container.DataItem, "ProductID")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ImageField DataImageUrlField="productImage" HeaderText="��ƷͼƬ"
                                    DataImageUrlFormatString="~/photo/{0}" ReadOnly="True">
                                    <ControlStyle Height="60px" Width="80px" />
                                    <ItemStyle Height="60px" Width="80px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="ProductName" HeaderText="��Ʒ����">
                                    <ControlStyle Width="120px" />
                                    <ItemStyle Width="120px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CategoryName" HeaderText="��Ʒ���" />
                                <asp:BoundField DataField="CurrentPrice" DataFormatString="{0:C2}"
                                    HeaderText="�г���" />
                                <asp:BoundField DataField="MenberPrice" DataFormatString="{0:C2}"
                                    HeaderText="��Ա��">
                                    <ControlStyle ForeColor="Red" />
                                    <ItemStyle ForeColor="Red" />
                                </asp:BoundField>

                                <asp:BoundField DataField="ProductStore" HeaderText="��Ʒ���" />
                                <asp:TemplateField HeaderText="״̬">
                                    <ItemTemplate>
                                        <asp:Label ID="lbState" runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="�Ƽ���Ʒ">
                                    <ItemTemplate>
                                        <asp:Label ID="lbtuijian" runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="��Ч��">
                                    <ItemTemplate>
                                        <asp:Label ID="lbHowDay" runat="server"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:HyperLinkField HeaderText="����" Text="�޸�" DataNavigateUrlFields="ProductID"
                                    DataNavigateUrlFormatString="AddProduct.aspx?pID={0}" />
                            </Columns>
                            <EmptyDataRowStyle BackColor="#CADBED" ForeColor="Red" />
                            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                            <HeaderStyle HorizontalAlign="Center" BackColor="Tan" Font-Bold="True" />
                            <RowStyle Height="30px" HorizontalAlign="Center" />
                            <FooterStyle BackColor="Tan" />
                            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue"
                                HorizontalAlign="Center" />
                            <EmptyDataTemplate>
                                <div>���ĺ�̨���ݿ⻹û�������Ʒ�أ��������!!</div>
                            </EmptyDataTemplate>
                            <RowStyle Height="30px" />
                            <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnDel" runat="server" Text="ɾ����Ʒ" Height="30px"
                            OnClick="btnDel_Click" OnClientClick="return confirm('��ȷ��Ҫɾ������Ʒ��')" />
                        &nbsp;&nbsp;
                    
                        <asp:Button ID="btnIsPost" runat="server" Text="��Ʒ�ϼ�" Height="30px"
                            OnClick="btnIsPost_Click" />
                        &nbsp;
                    
                        <asp:Button ID="btnNotIsPost" runat="server" Text="��Ʒ�¼�" Height="30px"
                            OnClick="btnNotIsPost_Click" />
                        &nbsp;
                   
                        <asp:Button ID="btnIsCommend" runat="server" Text="�Ƽ���Ʒ" Height="30px"
                            OnClick="btnIsCommend_Click" CausesValidation="False" />
                        &nbsp;
                    
                        <asp:Button ID="btnCanceltuijian" runat="server"
                            OnClick="btnCanceltuijian_Click" Height="30px" Text="ȡ���Ƽ���Ʒ"
                            CausesValidation="False" />
                        &nbsp;&nbsp;
                   
                        <asp:Button ID="lblexcel" runat="server" CausesValidation="false" Height="30px" Text="����Excel"
                            OnClick="lblexcel_Click" />
                        &nbsp;
                    
                        <asp:Button ID="lbldaoru" runat="server" Text="����Excel"
                            CausesValidation="false" Height="30px" OnClick="lbldaoru_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <uc1:myPagelist ID="pList8517" runat="server" />
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

