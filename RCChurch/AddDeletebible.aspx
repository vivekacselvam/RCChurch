<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddDeletebible.aspx.cs" Inherits="AddDeletebible" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
    <%-- <asp:UpdatePanel ID="update1" runat="server">
    <ContentTemplate>--%>
    <center>
    <table width="100%">
    <tr>
    <td align="left">
    <asp:LinkButton ID="lnkimage" runat="server" Text="Clicak here to Upload Image..." PostBackUrl="~/imageupload.aspx" />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Text="Click here to Edit Image..." PostBackUrl="~/galleryedit.aspx" />
    </td>
    <td align="right">
    <asp:ImageButton ID="imglogout" runat="server" OnClick="logout" 
            ImageUrl="~/images/logout-button-th.png" Height="70px" Width="70px" />
    </td>
    </tr>
    
    </table>
    <table>
    <tr>
    <td align="left">
    Date :
    </td>
    <td align="left">
    <asp:TextBox ID="txtdate" runat="server" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*" ForeColor="Red" ErrorMessage="Enter Date" ControlToValidate="txtdate" ValidationGroup="Group" />
    <%--<asp:CompareValidator ID="compare1" ControlToValidate="txtdate" Type="Date" ErrorMessage="Please select correct date" Text="*" runat="server" />--%>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdate">
        </cc1:CalendarExtender>
    </td>
    </tr>
    <tr>
    <td align="left">
    Daily Verse :
    </td>
    <td align="left">
    <asp:TextBox ID="txtbible" runat="server" TextMode="MultiLine" />
    <asp:RequiredFieldValidator ID="RFVbible" runat="server" Text="*" ForeColor="Red" ErrorMessage="Enter Daily Verse" ControlToValidate="txtbible" ValidationGroup="Group" />
    </td>
    </tr>
    <tr>
    <td align="center" colspan="2">
    <asp:Button ID="btnadd" runat="server" ValidationGroup="Group" Text="Add" onclick="btnadd_Click" />
    
    </td>
    </tr>
    
    </table>
    </center>
    <center>
    <table>
        <tr>
    <td align="center">
   <asp:Label ID="lblerror" runat="server" ForeColor="Red" />
    
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound"
            OnRowEditing="On_Row_Edit" OnRowUpdating="On_Row_Update" OnRowCommand="On_Row_Command"
            OnRowDeleting="On_Row_Deleting" OnRowCancelingEdit="On_Row_Cancel" 
            DataKeyNames="Bible_Id" BackColor="#DEBA84" BorderColor="#DEBA84" 
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
             <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}" />
             <asp:TemplateField HeaderText="Daily Verse" SortExpression="Daily Verse">
                 <EditItemTemplate>
                     <asp:TextBox ID="txtbible" runat="server" Text='<%# Bind("Bible_details") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="lblbible" runat="server" Text='<%# Bind("Bible_details") %>'></asp:Label>
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
    DATE
    </td>
    <td>
    DAILY VERSE
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="lbldate" runat="server"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="txteditbible" runat="server" TextMode="MultiLine" />
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
    </center>
        <%--</ContentTemplate>
    </asp:UpdatePanel>--%>
    </div>
    <asp:ValidationSummary ID="Valsum1" ShowMessageBox="true" runat="server" ShowSummary="false" ValidationGroup="Group" />
    </form>
</body>
</html>
