<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleContent" Runat="Server">
<asp:Literal ID="Literal1" runat="server" Text="RC Church | Gallery"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <script src="Scripts/Gallery.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <%-- <div class='main-container'>
		<center>
			<img alt='' src='images/stripwine.png'/>
		</center>
	</div>--%>
	

	<div class="main-container">
		<div class="container1" style="padding: 0px;border-top: 0;">
			
			<br/>
			<h1>Gallery</h1>
			<asp:Label ID="lblimg" runat="server"></asp:Label>

			<br />
			<div class="clear"></div>
		</div>


	</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<asp:Image ID="imghide" runat="server" Visible="false" />
</asp:Content>

