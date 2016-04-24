<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imageupload.aspx.cs" Inherits="imageupload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<%--    <style type="text/css">
    .overlay 
{
position: fixed;
z-index: 99;
top: 0px;
left: 0px;
background-color: #FFFFFF;
width: 100%;
height: 100%;
filter: Alpha(Opacity=70);
opacity: 0.70;
-moz-opacity: 0.70;
}
* html .overlay 
{
position: absolute;
height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + 'px');
width: expression(document.body.scrollWidth > document.body.offsetWidth ? document.body.scrollWidth : document.body.offsetWidth + 'px');
}
.loader 
{
z-index: 100;
position: fixed;
width: 120px;
margin-left: -60px;
top: 30%;
left: 50%;
font-style: italic;
}
* html .loader 
{
position: absolute;
margin-top: expression((document.body.scrollHeight / 4) + (0 - parseInt(this.offsetParent.clientHeight / 2) + (document.documentElement && document.documentElement.scrollTop || document.body.scrollTop)) + 'px');
}
    </style>--%>

    <%--<link rel="stylesheet" href="css/churchstyle.css" type="text/css"/>--%>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <div>
    <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server" ClientIDMode="Static">
    <ContentTemplate>--%>
    <table width="100%">
    <tr>
    <td align="left">
    <asp:LinkButton ID="lnkimage" runat="server" Text="Click here to Add Delete Daily Verse..." PostBackUrl="~/AddDeletebible.aspx" />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" Text="Click here to Edit Image..." PostBackUrl="~/galleryedit.aspx" />
    </td>
    <td align="right">
    <asp:ImageButton ID="imglogout" runat="server" OnClick="logout" 
            ImageUrl="~/images/logout-button-th.png" Height="70px" Width="70px" />
    </td>
    </tr>
    
    </table>
    <br />
    <br />

    <table>
    <tr>
    <td>
    Conditions to Image Upload.........
    </td>
    </tr>
    <tr>
    <td>
    1. Image size must not exceed 110kb.

    </td>
    </tr>
    <tr>
    <td>
    2. Only pictures in jpg format should be uploaded.
    </td>
    </tr>
    <tr>
    <td>
    Click the below link to resize the image.
    </td>
    
    </tr>
    <tr>
    <td>
    <a target="_blank" href="http://www.picresize.com/">Click Here to compress the image with 110 KB & convert the image to jpeg</a>
    </td>
    </tr>
    </table>
    
    <br />    
    <br />
    <asp:FileUpload id="FileUploadControl" runat="server" />
        <asp:RequiredFieldValidator ID="RFVfileup" ControlToValidate="FileUploadControl" Text="*" ErrorMessage="Select the image to upload..." ValidationGroup="Group1" runat="server" />
          <asp:Button runat="server" id="UploadButton" ValidationGroup="Group1" text="Upload" onclick="btnUpload_Click" />
          <%--<asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="ondelete" />--%>
          <br />
          <br />
          <br />
    <asp:Label runat="server" id="lblstatus" text="" Font-Bold="true" />
     <br />
          <br />
          <br />
          <asp:Panel ID="PanelImgresize1" runat="server">
          <a target="_blank" href="http://www.picresize.com/">Click Here to compress the image with 110 KB</a>
          <%--<asp:LinkButton ID="lnkimgresize" runat="server" Font-Bold="true" target="_blank" PostBackUrl="" ></asp:LinkButton>--%>
          </asp:Panel>
          <asp:Panel ID="PanelImgresize2" runat="server">
          <a target="_blank" href="http://www.picresize.com/">Click Here to convert the image to jpeg</a>
          <%--<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="true" target="_blank" PostBackUrl="" ></asp:LinkButton>--%>
          </asp:Panel>
    <asp:ValidationSummary ID="Valsum1" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="Group1" />
    <%-- </ContentTemplate>--%>
     <%--<Triggers>

        <asp:AsyncPostBackTrigger ControlID = "UploadButton"

          EventName = "Click" />

        <asp:PostBackTrigger ControlID = "UploadButton" />

    </Triggers>--%>
       


   <%-- <asp:FileUpload id="FileUpload1" runat="server" />
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="FileUpload1" Text="*" ErrorMessage="Select the image to upload..." ValidationGroup="Group1" runat="server" />--%>
    
    
    
    
      <%--</asp:UpdatePanel>
     
    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <asp:Panel ID="Panel1" CssClass="overlay" runat="server">
                <asp:Panel ID="Panel2" CssClass="loader" runat="server">                      
                     <img alt="loading" src="images/loading.gif" />
                     
                     </asp:Panel>
            </asp:Panel>    
              
        </ProgressTemplate>
        </asp:UpdateProgress>--%>
    </div>
    
    </form>
</body>
</html>
