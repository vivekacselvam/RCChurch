<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
 <link rel="shortcut icon" type="image/ico" href="images/favicon.ico"/>
    <title>PARISH PRIEST LOGIN</title>
    <style type="text/css">
    .spnInfo
    {
	color:#D8E1ED;
	font-size:12px;
	font-family:helvetica;
	letter-spacing:1px;
	text-shadow:1px 1px black;
    }
	.divUpper li
	{
	    list-style-type:none;
       display:inline;
       width:300px;
       
	}
   .btn
   {
        background-color:#45B6CC;       
        color:Whitesmoke;
        border-color:Gray;
        
        text-align:center;
         font-family:Arial;
         font-weight:bold;
        border-radius:2px;
        height:25px;
        width:60px;
        z-index:200;
        cursor:pointer;
   }
   .btn:hover
   {
       /* background-color:#C88351;*/
        color:White;
        
        border-color:White;
   }
   
    .LOGIN
    {
	z-index:100;
	border-radius:8px;
	box-shadow:5px 5px 5px grey;
	font-family:Verdana;
	left:500px;
	top:220px;
	position:fixed;
	background-color: lightbrown;
	line-height:3;
	border-color:Black;
	border:2px solid grey;
	color:#D8E1ED;
    }
	
	.divBottom
	{
	    position:relative  ;
	    top:500px;
	     border-top:1px solid whitesmoke;
		 font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
		 font-size: 11px;
		 font-weight: bold;
	}	
	.divBottom ul
	{
	    list-style-type:none;
       display:inline;
	}
	.divBottom li
	{
	    list-style-type:none;
       display:inline;
       width:300px;
       
	}
	.churchlink
	{
	color:#D8E1ED;
	text-decoration:none;
	font-family:helvetica;
	font-size:13px;
	text-shadow:1px 1px black;
	letter-spacing:1px;
	}
	.churchlink:hover
	{
	color:#FFF;
	font-family:helvetica;
	font-size:13px;
	letter-spacing:1px;
	text-shadow:1px 1px black;
	}
	.heading
	{
	     letter-spacing:1px;
	      text-shadow:2px 2px grey;
	      color:whitesmoke;
	     font-family:Segoe UI;
	     
	     font-colour:white;
	      text-align:center;
	}
    </style>
</head>
<body  background="images/loginbackground.jpg">
  <form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="update" UpdateMode="Conditional" runat="server">
    <ContentTemplate>
<center> <h1 class="heading">HOLY REDEEMER'S CHURCH PULIANGUDI</h1>
<hr />

<p>&nbsp;</p>
</center>
<div  class="LOGIN">
<table>
<thead>
<tr>
<th colspan="3" style="  letter-spacing:1px;font-family:Segoe UI;  font-style:italic; text-align:center">
PARISH PRIEST LOGIN
</th>
</tr>
</thead>
<tr>
<td> &nbsp;&nbsp;</td>
<td> User Name </td>

<td>
 <asp:TextBox ID="txtname" runat="server" Width="150px" style="border-radius:4px;"/>
    <asp:RequiredFieldValidator ID="reqtxtname" ControlToValidate="txtname" Text="*" ErrorMessage="Enter User Name" runat="server" ValidationGroup="Group" />
</td>
<td> &nbsp;&nbsp;</td>
</tr>
<tr>
<td> &nbsp;&nbsp;</td>
<td>
Password
</td>

<td>
 <asp:TextBox ID="txtpass" runat="server" TextMode="Password" style="border-radius:4px;" Width="150px"/>
    <asp:RequiredFieldValidator ID="reqpass" ControlToValidate="txtpass" Text="*" ErrorMessage="Enter password" runat="server" ValidationGroup="Group" />
</td>
<td>&nbsp;&nbsp;</td>
</tr>
<tr>
<td align="center" colspan="3">
<%--<td>&nbsp;&nbsp;</td>--%>
<%--<td  style=" text-align:right">
--%><asp:Button ID="btnok" Text="Ok" class="btn" runat="server" Width="44px" 
            ValidationGroup="Group" onclick="btnok_Click" Height="26px"/>&nbsp;&nbsp;
<%--</td>--%>
<%--<td  style=" text-align:left">--%>

<asp:Button ID="txtclear" Text="Clear" runat="server" class="btn" Width="44px" 
            onclick="txtclear_Click" Height="26px"/>
<%--</td>--%></td>
<%--<td>&nbsp;&nbsp;</td>--%>
<tr>
<td>&nbsp;&nbsp;</td>
<td  style=" text-align:right">
</td>
<td align="left" valign="top"  style="font-weight: lighter; line-height: normal; font-style: normal; text-align:left; font-size: 11px; font-family: Arial, Helvetica, sans-serif;">
<asp:Label ID="lblerror" runat="server" ForeColor="Red" />
</td>
<td>&nbsp;&nbsp;</td>
</table>
</div>
<div class="divBottom">
<ul class="btmList">
<li style=" float:left"><a class="churchlink" target="_blank" href="http://www.rcchurchpuliangudi.org">rcchurchpuliangudi</a></li>
<li  style=" margin-left:240px"><span class="spnInfo"> Designed by DIOCOMPUTO</span></li>
<li style=" float:right"><span class="spnInfo"> © 2013 Copyright rcchurch puliangudi</span> </li>
</ul>
</div>
 </ContentTemplate>
    </asp:UpdatePanel>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT [UserName] FROM [UserDetails] WHERE ([UserName] &lt;&gt; @UserName)">
        <SelectParameters>
            <asp:Parameter DefaultValue="admin" Name="UserName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ValidationSummary ID="valsummary" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="Group" />
	  </form>
</body>
</html>
