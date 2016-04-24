<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donate.aspx.cs" Inherits="Donate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:FileUpload ID="imgupload" runat="server" />
    <br />
    <asp:Button ID="imgsave" Text="Save" runat="server" onclick="imgsave_Click" />
    </div>
    </form>
</body>
</html>
