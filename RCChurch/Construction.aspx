<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="Construction.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>
    <table width="100%" height="300px">
    <tr>
    <td align="center">
    <asp:LinkButton ID="lnkhome" PostBackUrl="~/Default.aspx" runat="server" Text="Home" />
    </td>
    </tr>
    <tr>
    <td valign="middle">
    <marquee direction="left" scrolldelay="120"><asp:Label ID="lblinform" Text="Site under construction" runat="server" ForeColor="Black" Font-Bold="true" Font-Size="Large"></asp:Label></marquee>
    </td>
    </tr>
    </table>
    
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

