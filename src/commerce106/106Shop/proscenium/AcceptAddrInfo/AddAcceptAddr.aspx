<%@ Page Title="" Language="C#" MasterPageFile="~/proscenium/AcceptAddrInfo/MasterPage.master" AutoEventWireup="true" CodeFile="AddAcceptAddr.aspx.cs" Inherits="proscenium_AcceptAddrInfo_AddAcceptAddr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../css/accept.css" rel="stylesheet" type="text/css" />
    <script src="../../js/JScript1.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="AdminContent">
    <table cellpadding="0" cellspacing="0" class="AdminTable" style="border:1px solid red;">
        <tr>
            <td class="AdminTableTitle" colspan="2">
                <asp:Label ID="lblAddAcceptAddr" runat="server" Text="����ջ���ַ"></asp:Label></td>
        </tr>
        <tr>
            <td class="FieldName" style="vertical-align:top; height:24px;"><span class="red">*</span>����ʡ��</td>
            <td class="FieldValue" style="height:24px;">
                <asp:TextBox ID="txtProvince" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtProvince" runat="server" 
                    ControlToValidate="txtProvince" Display="Dynamic" 
                    ErrorMessage="����ʡ�ݲ���Ϊ��,����ע����д">*</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="FieldName" style="vertical-align:top; height:24px;"><span class="red">*</span>�����У�</td>
            <td class="FieldValue" style="height:24px;">
                <asp:TextBox ID="txtcity" runat="server"  Width="200px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtCity" runat="server" 
                    ControlToValidate="txtcity" Display="Dynamic" ErrorMessage="������������Ϊ��,����ע����д">*</asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="FieldName" style="vertical-align:top; height:24px;"><span class="red">*</span>�����أ�</td>
            <td class="FieldValue" style="height:24px;">
                <asp:TextBox ID="txtCountry" runat="server"  Width="200px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtcountry" runat="server" 
                    ControlToValidate="txtCountry" Display="Dynamic" ErrorMessage="�����طݲ���Ϊ�գ�����ע����д">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FieldName"><span class="red">*</span>�ֵ���ַ��</td>
            <td class="FieldValue">
                <asp:TextBox ID="txtRowAddr" Width="400" MaxLength="400" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtAddr" runat="server" 
                    ControlToValidate="txtRowAddr" Display="Dynamic" ErrorMessage="�ֵ���ַ����Ϊ��">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FieldName" style="height:24px;"><span class="red">*</span>�ջ���������</td>
            <td class="FieldValue" style="height:24px;">
            <asp:TextBox ID="txtRealityName" Width="200px" MaxLength="20" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRealityName" runat="server" 
                    ControlToValidate="txtRealityName" Display="Dynamic" ErrorMessage="�ջ�����������Ϊ��">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="FieldName"><span class="red">*</span>�ֻ����룺</td>
            <td class="FieldValue">
                <asp:TextBox ID="txtHandset" Width="200px" MaxLength="20" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvHandset" runat="server" 
                    ControlToValidate="txtHandset" Display="Dynamic" ErrorMessage="�ֻ����벻��Ϊ��">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revtxthandset" runat="server" 
                    ControlToValidate="txtHandset" Display="Dynamic" ErrorMessage="��������ȷ���ֻ�������֤" 
                    ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="FieldName">�绰���룺</td>
            <td class="FieldValue">
                <asp:TextBox ID="txtDel" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="FieldName"><span class="red">*</span>�������룺</td>
            <td>
                <asp:TextBox ID="txtZipCode" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvtxtzipcode" runat="server" 
                    ControlToValidate="txtZipCode" Display="Dynamic" ErrorMessage="�������벻��Ϊ��!">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revZipCode" runat="server" 
                    ControlToValidate="txtZipCode" Display="Dynamic" ErrorMessage="��������ȷ�����������ʽ" 
                    ValidationExpression="\d{6}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="FieldName">QQ�˺ţ�</td>
            <td class="FieldValue">
                <asp:TextBox ID="txtQQMath" runat="server" Width="200px" MaxLength="20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="FieldName"></td>
            <td class="FieldValue">
                <asp:Button ID="btnAdd" runat="server" Text="����ջ���ַ" onclick="btnAdd_Click" 
                    style="height: 26px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="�޸��ջ���ַ" style="height: 26px" 
                    onclick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnReset" runat="server" Text="�����ջ���ַ����ҳ��" 
                    CausesValidation="False" onclick="btnReset_Click" />
&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
</div>
    <asp:TextBox ID="txtInfoId" runat="server" Visible="false"></asp:TextBox>
</asp:Content>

