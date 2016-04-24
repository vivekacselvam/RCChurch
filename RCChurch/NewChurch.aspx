<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="NewChapel.aspx.cs" Inherits="NewChapel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleContent" Runat="Server">
<asp:Literal ID="Literal1" runat="server" Text="RC Church | New Church"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            border-left: 0px solid #CCC;
            border-right: 0px solid #CCC;
            width: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="main-container">
		<center>
			<img alt="" src="images/strip.png"/>
		</center>
	</div>
    <div class="main-container">
    
		<div class="container1" style="padding: 0px;border-top: 0;">
			
			<br/>
			<h1>New Church</h1>
			<br />
            <center>
			 <div class="container1" style="padding: 0px;">
        <br />
        <div class="box">
		<div class="content1">
        <table>
       
        <tr>
        <td colspan="4" align="left">
        <h3>Holy Redeemer's New Church – Palayamkottai Diocese.</h3>
        </td>
        </tr>
         <tr>
        <td class="tdborder" colspan="4" align="center">
        <img class="imgparish" src="images/newchurch.jpg" alt="" width="400"
						height="300" />
                        <br />
        </td>
        </tr>
        <tr>
        <td class="tdborder">&nbsp;</td>
        <td align="center" class="addressshadow tdborder" bgcolor="#6A6A6A">
        <asp:Label ID="lbladdress" Text="New Church Project" Font-Size="Large" runat="server" ForeColor="White" />
        </td>
        <td class="tdborder">&nbsp;</td>
        <td class="tdborder">
        </td>
        </tr>
        <tr>
        <td class="tdborder"></td>
        <td class="tdborder">
        <img class="imgparish" src="images/view1.png" alt="" width="200"
						height="150" />
                        <img class="imgparish" src="images/view2.png" alt="" width="200"
						height="150" />
                        <img class="imgparish" src="images/view3.jpg" alt="" width="200"
						height="250" />
                        <img class="imgparish" src="images/view4.jpg" alt="" width="200"
						height="150" />
        </td>
        <td class="tdborder"></td>
        <td class="tdborder">
        <p style="font-weight:bold; text-align:justify">My family and I in the construction of New Holy Redeemer's Church,</p>
        <br />
        <p style="text-align:justify">Dear friends in Jesus Christ,</p>
        <br />
        <p style="text-align:justify">Greetings and let the grace of the Lord is upon you and your family.</p>
        <br />
        <p style="text-align:justify">Year 1983 was the Centenary Year of the inception of the Parish and hence a grand celebration was carried out in order to revive the faith of the people by innovative pastoral methods.  The Parish Church was built 130 years ago needs to be replaced as it is small in size and it is very damaged. We can’t able to contain the ever-growing daily and Sunday Catholic population.  So we need a new church for 2000 participants. The Local Catholics are so much interested to construct the new Church which will serve as a parish Church.</p>
        <br />
        <p style="text-align:justify">We have enough land for construction. Our people of the locality live in poverty and they are working as a agriculture labours.They are ready to contribute. Rs.50, 00,000; for rest of the amount we are requesting your financial support. Here I enclosed the estimation and photograph of plan.</p>
        <br />
        <p style="text-align:justify">The total cost of constructing the Church has been estimated at Rs.1.5 crores (INR 15 million). The construction will be completed within 12 months. We seek your financial and spiritual support towards the successful completion of this Church.</p>
   <br />
   <p style="font-weight:bold; text-align:justify">New Church Project Details</p>
   <br />
   <table>
   <tr>
   <td class="style1" align="left">
        <asp:Label ID="Label35" CssClass="lableparish" runat="server" Text="Title of the project:" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label36" CssClass="lablevillage" runat="server" Text="Construction of parish church at Puliangudi in the Diocese of Palayamkottai" />
        </td>
   </tr>
   <tr>
   <td class="style1" align="left">
        <asp:Label ID="Label37" CssClass="lableparish" runat="server" Text="Applicant:" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label38" CssClass="lablevillage" runat="server" Text="Rev. <b>Fr.S.M. ARUL RAJ</b><br>Parish Priest<br><br>Rev. <b>Fr.A.ROBIN</b><br>Assistant Parish Priest<br><br>Holy Redeemers Church,<br>Puliangudi-627855,<br>Tirunelveli District,<br>Tamilnadu, India." />
        </td>
   </tr>
   <tr>
   <td class="style1" align="left">
        <asp:Label ID="Label39" CssClass="lableparish" runat="server" Text="Legal Holder:" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label40" CssClass="lablevillage" runat="server" Text="Rt, Rev. <b>JUDE PAULRAJ.A,</b><br>Bishop of Palayamkottai,<br>Catholic Bishops House,<br>Palayamkottai-627002,<br>Tirunelveli District,<br>Tamilnadu, India.<br>Email: rcdiopalayamkottai @ yahoo.com<br>Phone: 00914622522114, 00914622522818<br>Fax: 914622522081" />
        </td>
   </tr>
   <tr>
   <td class="style1" align="left">
        <asp:Label ID="Label41" CssClass="lableparish" runat="server" Text="Fcra No:" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label42" CssClass="lablevillage" runat="server" Text="076030018  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Date: 16.03.1985" />
        </td>
   </tr>
   <tr>
   <td class="style1" align="left">
        <asp:Label ID="Label43" CssClass="lableparish" runat="server" Text="Budget:" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label44" CssClass="lablevillage" runat="server" Text="" />
        </td>
   </tr>
    <tr>
   <td class="style1" align="left">
        <asp:Label ID="Label45" CssClass="lablevillage" runat="server" Text="Total Cost of Construction:" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label46" CssClass="lablevillage" runat="server" Text="<b>1.5 CRORE</b>" />
        </td>
   </tr>
   </table>
   <br />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        
        </td>
        <td align="center" class="addressshadow tdborder" bgcolor="#6A6A6A">
        <asp:Label ID="Label18" Text="Work in progress" Font-Size="Large" runat="server" ForeColor="White" />
        </td>
        <td class="tdborder">
        
        </td>
        <td class="tdborder" align="left">
        <p style="font-weight:bold">Estimate</p>
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        
        </td>
        <td class="tdborder">
        <img class="imgparish" src="images/work3.jpg" alt="" width="200"
						height="150" />
        <img class="imgparish" src="images/work1.jpg" alt="" width="200"
						height="150" />
                        <img class="imgparish" src="images/work2.jpg" alt="" width="200"
						height="150" />
                        <table>
                        <tr>
                        <td align="left" class="addressshadow tdborder" bgcolor="#6A6A6A">
        <asp:Label ID="Label47" Text="After sending us your contribution for<br>New Church Project kindly send us<br>your payment details mail us to<br>holyredeemers@rcchurchpuliangudi.org" Font-Bold="true" Font-Size="10px" runat="server" ForeColor="White" />
        </td>
                        </tr>
                        </table>
        </td>
         <td class="tdborder">
       
        </td>
         <td class="tdborder">
         <table>
        <tr>
        <td colspan="2" align="center">
        <asp:Label ID="Label2" CssClass="lableparish" runat="server" Text="ESTIMATE FOR THE PROPOSED CONSTRUCTION OF R.C CHURCH AT PULIYANGUDI" />
        </td>
        </tr>
        <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label1" CssClass="lableparish" runat="server" Text="ESTIMATION FOR BASEMENT WORK" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label3" CssClass="lableparish" runat="server" Text="15,00,000.00" />
        </td>
        </tr>
        <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label4" CssClass="lableparish" runat="server" Text="ESTIMATION FOR FLOOR WORK" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label5" CssClass="lableparish" runat="server" Text="7,00,000.00" />
        </td>
        </tr>
         <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label6" CssClass="lableparish" runat="server" Text="ESTIMATION FOR ROOF WORK" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label7" CssClass="lableparish" runat="server" Text="35,00,000.00" />
        </td>
        </tr>
        <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label8" CssClass="lableparish" runat="server" Text="ESTIMATION FOR BACKDOOM WORK" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label9" CssClass="lableparish" runat="server" Text="13,00,000.00" />
        </td>
        </tr>
        <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label10" CssClass="lableparish" runat="server" Text="ESTIMATION FOR TOWER WORK" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label11" CssClass="lableparish" runat="server" Text="25,00,000.00" />
        </td>
        </tr>
        <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label12" CssClass="lableparish" runat="server" Text="ESTIMATION FOR EXTERNAL WORK" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label13" CssClass="lableparish" runat="server" Text="17,00,000.00" />
        </td>
        </tr>
        <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label14" CssClass="lableparish" runat="server" Text="ESTIMATION FOR OTHER EXPENSES" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label15" CssClass="lableparish" runat="server" Text="38,00,000.00" />
        </td>
        </tr>
        <tr>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label16" CssClass="lableparish" runat="server" Text="TOTAL ESTIMATION" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label17" CssClass="lableparish" runat="server" Text="1,50,00,000.00" />
        
        </td>
        </tr>
       
        </table>
        <br />
        <br />
        <table style="border:0px solid #CCC">
         <tr>
        <td align="left" class="tdborder">
        <p style="font-weight:bold">Mode of contribution</p>
        </td>
        </tr>
        <tr>
       <td class="tdborder">
        <table>
        <tr>
        <td colspan="2" align="left">
        <asp:Label ID="Label19" CssClass="lablevillage" runat="server" Text="1. You may approach the Parish Priest and contribute" />
        </td>
        </tr>
        <tr>
        <td colspan="2" align="left">
        <asp:Label ID="Label20" CssClass="lablevillage" runat="server" Text="2. you may leave your contribution in the special collection box placed before the altar inside the Church" />
        </td>
        </tr>
        <tr>
        <td colspan="2" align="left">
        <asp:Label ID="Label22" CssClass="lableparish" runat="server" Text="3. To make direct bank to bank transfer:" />
        <asp:Label ID="Label21" CssClass="lablevillage" runat="server" Text="The Bank and accounts details" />
        </td>
        </tr>
        <tr>
         <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label23" CssClass="lableparish" runat="server" Text="Account Name" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label24" CssClass="lableparish" runat="server" Text="Mr.Arul Raj .S" />
        </td>
        </tr>
        <tr>
         <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label25" CssClass="lableparish" runat="server" Text="Account No" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label26" CssClass="lableparish" runat="server" Text="30407525821" />
        </td>
        </tr>
         <tr>
         <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label27" CssClass="lableparish" runat="server" Text="Bank Name & Address" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label28" CssClass="lableparish" runat="server" Text="STATE BANK OF INDIA,<br>NO : 12,MAIN ROAD,<br>PULIANGUDI (TIRUNELVELI )." />
        </td>
        </tr>
         <tr>
         <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label31" CssClass="lableparish" runat="server" Text="BRANCH CODE" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label32" CssClass="lableparish" runat="server" Text="5202" />
        </td>
        </tr>
        <tr>
         <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label33" CssClass="lableparish" runat="server" Text="CIF NO" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label34" CssClass="lableparish" runat="server" Text="85254355543" />
        </td>
        </tr>
        <tr>
         <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label29" CssClass="lableparish" runat="server" Text="IFSC Code" />
        </td>
        <td style="border-top:1px solid #CCC" align="left">
        <asp:Label ID="Label30" CssClass="lableparish" runat="server" Text="SBIN0005202" />
        </td>
        </tr>
        </table>
        <br />
        </td>
        </tr>
        </table>
        </td>
        </tr>
       <%-- <tr>
        <td class="tdborder">
        
        </td>
        <td class="tdborder">
        
        </td>
        <td class="tdborder">
        
        </td>
        <td class="tdborder">
        
        </td>
        </tr>--%>
        <tr>
        <td class="tdborder">
        
        </td>
        <td class="tdborder">
        
        </td>
        <td class="tdborder">
        
        </td>
        <td class="tdborder">
        <p style="text-align:justify; font-weight:bold">Please mention your family intentions for us to pray.</p>
        <br />
        <p style="text-align:justify; font-weight:bold">Thank you for your valuable prayers, solidarity and contributions. May God bless you through the intercession of Holy redemeer</p>
        </td>
        </tr>
        </table>
        </div>
        </div>
        </div>
        </center>
		</div>


	</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

