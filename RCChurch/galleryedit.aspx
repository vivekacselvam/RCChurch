<%@ Page Language="C#" AutoEventWireup="true" CodeFile="galleryedit.aspx.cs" Inherits="galleryedit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
    <tr>
    <td align="left">
    <asp:LinkButton ID="lnkimage" runat="server" Text="Click here to Add Delete Daily Verse..." PostBackUrl="~/AddDeletebible.aspx" />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Text="Click here to Upload Image..." PostBackUrl="~/imageupload.aspx" />
    
    </td>
    <td align="right">
    <asp:ImageButton ID="imglogout" runat="server" OnClick="logout" 
            ImageUrl="~/images/logout-button-th.png" Height="70px" Width="70px" />
    </td>
    </tr>
    
    </table>

    <br />
    <br />
    <br />
    <table width="100%">
    <tr align="center">
    <td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
             
            OnRowDeleting="On_Row_Deleting" OnRowCommand="On_Row_Command" OnRowDataBound="GridView1_RowDataBound"
            DataKeyNames="Img_Id" BackColor="#DEBA84" BorderColor="#DEBA84" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
         <Columns>
         <asp:ButtonField ButtonType="Button" Text="Edit" CommandName="Buttonclick" />
            <asp:CommandField ShowDeleteButton="true" />
             <%--<asp:BoundField DataField="Bible_Id" HeaderText="Bible_Id" 
                 InsertVisible="False" ReadOnly="True" SortExpression="Bible_Id" />--%>
                 <%--<asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />--%>
                <%-- <asp:TemplateField HeaderText="Date" SortExpression="Date">
                 <EditItemTemplate>
                     <asp:TextBox ID="txtdate" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lbldate" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>--%>
             <asp:BoundField DataField="Img_Name" HeaderText="Image Name" SortExpression="Img_Name" />
             <asp:TemplateField HeaderText="Image Display Name" SortExpression="Img_Dis_Name">
                 <EditItemTemplate>
                     <asp:TextBox ID="txtimgname" runat="server" Text='<%# Bind("Img_Dis_Name") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lblimgname" runat="server" Text='<%# Bind("Img_Dis_Name") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
         <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
         <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
         <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
         <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#FFF1D4" />
         <SortedAscendingHeaderStyle BackColor="#B95C30" />
         <SortedDescendingCellStyle BackColor="#F1E5CE" />
         <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </td>
    </tr>
    <tr>
    <td align="center">
    <asp:Panel ID="PanelEdit" runat="server">
    <table border="2">
    <tr>
    <td>
    Image Name
    </td>
    <td>
    Image Display Name
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="lbliamge" runat="server"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txtimagedisplay" runat="server" TextMode="MultiLine" />
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
    <asp:Button ID="btnupdate" runat="server" Text="Update" onclick="btnupdate_Click" />&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btncancel" runat="server" Text="Cancel" onclick="btncancel_Click" />
    </td>
    </tr>
    </table>
    <asp:Label ID="lblid" runat="server" Visible="false" />
    </asp:Panel>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
