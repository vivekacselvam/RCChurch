<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="institution.aspx.cs" Inherits="institution" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleContent" Runat="Server">
<asp:Literal ID="Literal1" runat="server" Text="RC Church | Our Institutions"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style4
    {
        width: 260px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="main-container">
		<div class="container1" style="padding: 0px;border-top: 0;">
			<br/>
			<h1>Our Institutions</h1>
		</div>
        <div class="container1" style="padding: 0px;">
        <br />
        <div class="box">
		<div class="content1">
        <table>
        <%--<tr>
                    <td colspan="2">
                    <h3>Welcome to our parish</h3>
                    </td>
                    </tr>--%>
                    <tr>
                    <td colspan="2" align="center">
                    <img class="imgparish" src="images/school.jpg" alt="" width="400"
						height="300" />
                   <%-- <asp:Image ID="imgparish" runat="server" CssClass="imgr" ImageUrl="~/images/parish.jpg" 
                            Height="357px" Width="581px" />--%>
                    </td>
                    </tr>
                    <tr>
                    <td colspan="2" align="left">
                    <h6>Numbers /names of schools under Diocesan /Religious Management :</h6>
                    <%--<asp:Label ID="Label3" CssClass="lableparish" runat="server" Text="Numbers /names of schools under Diocesan /Religious Management : 6 Namely" />--%>
                    </td>
                    </tr>
                    <tr>
                    
        <td class="style4 tdborder"></td>
        <td align="left" class="tdborder">
        <table class="tableparish">
        <tr>
        <td class="tdborder">
        <asp:Label ID="lblparish" CssClass="lableparish" runat="server" Text="1. R.C Primary School (Puliangudi)" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label16" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label1" CssClass="lableparish" runat="server" Text="2. R.C High School (Puliangudi)" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label2" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label4" CssClass="lableparish" runat="server" Text="3. R.C. Middle School (Chinthamani)" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label5" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label6" CssClass="lableparish" runat="server" Text="4. R.C. Primary School (Ramasamiapuram)" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label7" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label8" CssClass="lableparish" runat="server" Text="5. R.C. Primary School (Vellaikavundanpatti)" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label9" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label10" CssClass="lableparish" runat="server" Text="6. R.C. Primary School (Chockampatti)" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label11" CssClass="lableparish" runat="server" Text="" />
        <br />
        <br />
        </td>
        </tr>
        </table>
        </td>
        </tr>
        <tr>
                    <td colspan="2" align="left">
                    <h6>Number of Teachers – Catholics & non Catholics:</h6>
                    <%--<asp:Label ID="Label3" CssClass="lableparish" runat="server" Text="Numbers /names of schools under Diocesan /Religious Management : 6 Namely" />--%>
                    </td>
                    </tr>
                    <tr>
                    <td class="style4 tdborder" colspan="2"  align="center">
                    <table width="100%">
                    <tr>
                    <td align="center">
                    <asp:Label ID="Label3" CssClass="lableparish" runat="server" Text="School" />
                    </td>
                    <td align="center" colspan="2">
                    <asp:Label ID="Label12" CssClass="lableparish" runat="server" Text="Permanent" />
                    </td>
                    <td align="center" colspan="2">
                    <asp:Label ID="Label13" CssClass="lableparish" runat="server" Text="Temporary" />
                    </td>
                    </tr>
                    <tr>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label14" CssClass="lablevillage" runat="server" Text="High school (Puliangudi)" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label15" CssClass="lablevillage" runat="server" Text="7" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label17" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                     <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label18" CssClass="lablevillage" runat="server" Text="4" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label19" CssClass="lablevillage" runat="server" Text="3" />
                    </td>
                    </tr>
                    <tr>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label20" CssClass="lablevillage" runat="server" Text="Primary (Puliangudi)" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label21" CssClass="lablevillage" runat="server" Text="8" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label22" CssClass="lablevillage" runat="server" Text="2" />
                    </td>
                     <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label23" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label24" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                    </tr>
                     <tr>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label25" CssClass="lablevillage" runat="server" Text="Chinthamani" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label26" CssClass="lablevillage" runat="server" Text="8" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label27" CssClass="lablevillage" runat="server" Text="2" />
                    </td>
                     <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label28" CssClass="lablevillage" runat="server" Text="2" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label29" CssClass="lablevillage" runat="server" Text="2" />
                    </td>
                    </tr>
                    <tr>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label30" CssClass="lablevillage" runat="server" Text="Chockampatti" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label31" CssClass="lablevillage" runat="server" Text="7" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label32" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                     <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label33" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label34" CssClass="lablevillage" runat="server" Text="3" />
                    </td>
                    </tr>
                    <tr>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label35" CssClass="lablevillage" runat="server" Text="V.K Patti" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label36" CssClass="lablevillage" runat="server" Text="3" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label37" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                     <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label38" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label39" CssClass="lablevillage" runat="server" Text="1" />
                    </td>
                    </tr>
                     <tr>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label40" CssClass="lablevillage" runat="server" Text="Ramasamiapuram" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label41" CssClass="lablevillage" runat="server" Text="2" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label42" CssClass="lablevillage" runat="server" Text="1" />
                    </td>
                     <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label43" CssClass="lablevillage" runat="server" Text="0" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label44" CssClass="lablevillage" runat="server" Text="1" />
                    </td>
                    </tr>
                    <tr>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label45" CssClass="lablevillage" runat="server" Text="Total" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label46" CssClass="lablevillage" runat="server" Text="36" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label47" CssClass="lablevillage" runat="server" Text="4" />
                    </td>
                     <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label48" CssClass="lablevillage" runat="server" Text="8" />
                    </td>
                    <td align="center" style="border-top:1px solid #CCC">
                    <asp:Label ID="Label49" CssClass="lablevillage" runat="server" Text="9" />
                    </td>
                    </tr>

                    </table>
                    <br />
                    <br />
                    </td>
                    </tr>
                     <tr>
                    
        <td class="style4 tdborder"></td>
        <td align="left" class="tdborder">
        <table class="tableparish">
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label50" CssClass="lableparish" runat="server" Text="Number of catechists : " />
        <asp:Label ID="Label51" CssClass="lablevillage" runat="server" Text="Nine" />
        </td>
        <td class="tdborder">
        
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label52" CssClass="lableparish" runat="server" Text="At present : " />
        <asp:Label ID="Label53" CssClass="lablevillage" runat="server" Text="Sir Peter (M.A. M.Ed) Free Service" />
        </td>
        <td class="tdborder">
        
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label54" CssClass="lableparish" runat="server" Text="Tindivanam catechist : " />
        <asp:Label ID="Label55" CssClass="lablevillage" runat="server" Text="Nil" />
        </td>
        <td class="tdborder">
        
        </td>
        </tr>
        </table>
        </td>
        </tr>
         <tr>
                    
        <td class="style4 tdborder" valign="middle"><br /><h6>Our Transport facility:</h6></td>
        <td align="left" class="tdborder" style="vertical-align:middle">
        &nbsp;<asp:Label ID="Label58" CssClass="lableparish" runat="server" Text="Two School Buses" />
        </td>
        </tr>
       
                    <tr>
                    <td colspan="2" align="center">
                    <img class="imgparish" src="images/van.jpg" alt="" width="400"
						height="300" />
                   <%-- <asp:Image ID="imgparish" runat="server" CssClass="imgr" ImageUrl="~/images/parish.jpg" 
                            Height="357px" Width="581px" />--%>
                    </td>
                    </tr>
                    </table>
        </div>
        </div>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

