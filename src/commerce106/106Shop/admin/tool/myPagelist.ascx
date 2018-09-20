<%@ Control Language="C#" AutoEventWireup="true" CodeFile="myPagelist.ascx.cs" Inherits="admin_tool_myPagelist" %>

<div>
    <table style="width:300px">
        <tr>
            <th>第</th>
            <th><asp:Label ID="CurPageLabel" runat="server"></asp:Label></th>
            <th>页</th>
            <th>  &nbsp;&nbsp;&nbsp;&nbsp;</th>
            <th>共</th>
            <th><asp:Label ID="PageCountLabel" runat="server"></asp:Label></th>
            <th>页</th>
        </tr>
        <tr>
            <td colspan="7">
                <asp:HyperLink ID="IndexPage" runat="server">&nbsp;&nbsp;&nbsp;<<</asp:HyperLink>&nbsp;
                <asp:HyperLink ID="PrevPage" runat="server"><</asp:HyperLink>&nbsp;
                <asp:Literal ID="NumberPage" runat="server"></asp:Literal>&nbsp;
                <asp:HyperLink ID="NextPage" runat="server">></asp:HyperLink>&nbsp;
                <asp:HyperLink ID="LastPage" runat="server">>></asp:HyperLink>
            </td>  
        </tr>
    </table>

    <%--第<asp:Label ID="CurPageLabel" runat="server"></asp:Label>页 &nbsp;共<asp:Label ID="PageCountLabel" runat="server"></asp:Label>页&nbsp;
    <asp:HyperLink ID="IndexPage" runat="server"><<</asp:HyperLink>
    <asp:HyperLink ID="PrevPage" runat="server"><</asp:HyperLink>
    <asp:Literal ID="NumberPage" runat="server"></asp:Literal>
    <asp:HyperLink ID="NextPage" runat="server">></asp:HyperLink>
    <asp:HyperLink ID="LastPage" runat="server">>></asp:HyperLink>--%>
</div>
