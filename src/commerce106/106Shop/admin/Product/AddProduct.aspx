<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminPageMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="admin_Product_AddProduct" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <%--<div class="AdminNav">
            <div>
                <ul>
                    <li><a href="AddProduct.aspx">��Ӳ�Ʒ</a></li>
                    <li><a href="manageProduct.aspx">�����Ʒ</a></li>
                    <li><a href="manageProduct.aspx">�Ƽ���Ʒ</a></li>
                    <li><a href="manageProduct.aspx">�¼ܲ�Ʒ</a></li>
                    <li><a href="AddCategoryInfo.aspx">��Ʒ������</a></li>
                </ul>
            </div>
        </div>--%>
        <div>
            <table align="center" cellpadding="0" cellspacing="0" style="width: 820px; border: 1px solid red">
                <tr>
                    <td style="background-color: #99CCFF; font-size: 28px; font-weight: bold; font-style: italic; font-variant: normal; color: #FFFFFF;"
                        align="center" colspan="3">
                        <asp:Label ID="lblshow" runat="server" Text="�����Ʒ"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%; height: 30px" align="right">��Ʒ�ͺţ�</td>
                    <td style="width: 50%" align="left">
                        <asp:TextBox ID="txtProNumber" runat="server" Width="150px"
                            BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                    </td>
                    <td align="left">&nbsp;</td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��Ʒ���ƣ�</td>
                    <td align="left">
                        <asp:TextBox ID="txtProductName" runat="server" Width="150px"
                            BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvProductName" runat="server"
                            ControlToValidate="txtProductName" Display="Dynamic" ErrorMessage="����д�����Ʒ����">*</asp:RequiredFieldValidator>
                    </td>
                    <td align="center" rowspan="8">
                        <asp:Image ID="imgPhoto" runat="server" ImageUrl="~/photo/noimage.gif"
                            Height="150px" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��Ʒ���</td>
                    <td align="left">
                        <asp:DropDownList ID="ddlLeavl" runat="server" Width="100px"
                            BorderColor="Black" BorderWidth="1px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��ƷͼƬ��</td>
                    <td align="left">
                        <asp:FileUpload ID="fuProductPhoto" runat="server" />
                        <asp:LinkButton ID="lbtnUp" runat="server" CausesValidation="False"
                            Font-Underline="false"
                            OnClick="lbtnUp_Click">�ϴ�ͼƬ</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��Ʒԭ�ۣ�</td>
                    <td align="left">
                        <asp:TextBox ID="txtPrice" runat="server"
                            BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtPrice" runat="server"
                            ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="����д�����Ʒ�۸�">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvPrice" runat="server" ControlToValidate="txtPrice"
                            Display="Dynamic" ErrorMessage="����д��ȷ����ʽ" Type="Currency"
                            Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��Ʒ�ּۣ�</td>
                    <td align="left">
                        <asp:TextBox ID="txtCurrentPrince" runat="server"
                            BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��Ա�ּۣ�</td>
                    <td align="left">
                        <asp:TextBox ID="txtMenberPrince" runat="server"
                            BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvtxtMember" runat="server"
                            ControlToValidate="txtMenberPrince" ErrorMessage="��Ա�۲���Ϊ��!">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvMember" runat="server"
                            ControlToValidate="txtMenberPrince" Display="Dynamic"
                            ErrorMessage="��������ȷ�Ļ�Ա�۸�!" Type="Currency" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��Ӧ������</td>
                    <td align="left">
                        <asp:TextBox ID="txtPoductStore" runat="server"
                            BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvProductStore" runat="server"
                            ControlToValidate="txtPoductStore" Display="Dynamic"
                            ErrorMessage="����д��˲�Ʒ�Ŀ����ܹ���Ŀ">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvProductStore" runat="server"
                            ControlToValidate="txtPoductStore" Display="Dynamic"
                            ErrorMessage="����д��ȷ�Ĳ�Ʒ�������" Type="Currency" Operator="DataTypeCheck">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;λ��</td>
                    <td align="left" style="height: 5px">
                        <asp:DropDownList ID="ddlDanWei" runat="server"
                            BorderColor="Black" BorderWidth="1px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ѣ�</td>
                    <td align="left">
                        <asp:DropDownList ID="ddlFreightType" runat="server"
                            BorderColor="Black" BorderWidth="1px">
                            <asp:ListItem Value="1" Selected="True">���</asp:ListItem>
                            <asp:ListItem Value="2">EMS</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="txtFreight" runat="server" Width="100px" MaxLength="10" Text="10"
                            BorderColor="Black" BorderWidth="1px"></asp:TextBox>Ԫ
                        <span>
                            <asp:RequiredFieldValidator
                                ID="rfvfregintType" runat="server" ControlToValidate="txtFreight"
                                ErrorMessage="�ʷѲ���Ϊ�գ���������0">*</asp:RequiredFieldValidator>
                        </span>
                    </td>
                    <td align="left">&nbsp;</td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ����</td>
                    <td align="left">
                        <asp:DropDownList ID="ddlQQList" runat="server"
                            BorderColor="Black" BorderWidth="1px">
                        </asp:DropDownList>
                    </td>
                    <td align="left">&nbsp;</td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">�������ۣ�</td>
                    <td align="left" style="height: 18px" width="300">
                        <asp:RadioButton ID="rbDesc" runat="server" GroupName="isreviewenable" Text="��"
                            Checked="True" />
                        <asp:RadioButton ID="rbDesc2" runat="server" GroupName="isreviewenable"
                            Text="��" /></td>
                    <td align="left" style="height: 18px">&nbsp;</td>
                </tr>
                <tr>
                    <td align="right" style="height: 30px">�� Ч �� ��</td>
                    <td align="left">
                        <asp:DropDownList ID="ddlRemainDay" runat="server" Height="21px" Width="100px"
                            BorderColor="Black" BorderWidth="1px">
                            <asp:ListItem Value="15">�����</asp:ListItem>
                            <asp:ListItem Value="30">һ����</asp:ListItem>
                            <asp:ListItem Value="60">������</asp:ListItem>
                            <asp:ListItem Value="90">������</asp:ListItem>
                            <asp:ListItem Value="120">�ĸ���</asp:ListItem>
                            <asp:ListItem Value="150">�����</asp:ListItem>
                            <asp:ListItem Value="360">һ��</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;</td>
                    <td align="left">&nbsp;</td>
                </tr>
                <tr>
                    <td align="right">
                        <p>��Ʒ������</p>
                        <%--<p>
                            �������밴<font color="ff6600">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                Shift+Enter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
                            <br>
                            ������һ���밴&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br>
                            <font color="#ff6600">Enter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font>
                        </p>--%>
                    </td>

                    <td align="left">
                        <asp:TextBox ID="txtContent" runat="server" BorderColor="Black" BorderWidth="1px" Width="400px" Height="200px" TextMode="MultiLine"></asp:TextBox>
                        <%--<iframe id="eWebEditor1" src="../Edit/ewebeditor.htm?id=txtContent&style=coolblue" frameborder="0" scrolling="no" style="width: 400px; height: 250px;"></iframe>--%>
                    </td>
                    <td align="left">&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 40px;" align="right"></td>
                    <td align="center" style="height: 49px">
                        <asp:Button ID="btnAdd" runat="server" Text="�����Ʒ" OnClick="btnAdd_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server"
                            OnClick="btnUpdate_Click" Text="�޸���Ʒ" />
                        &nbsp;&nbsp;
                   
                        <asp:Button ID="btnReste" runat="server" Text="����" CausesValidation="False"
                            OnClick="btnReste_Click" />
                        <asp:ValidationSummary ID="vsProduct" runat="server" ShowMessageBox="True"
                            ShowSummary="False" />
                    </td>
                    <td align="left">&nbsp;</td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>

