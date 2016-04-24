<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content4" ContentPlaceHolderID="titleContent" Runat="Server">
<asp:Literal runat="server" Text="RC Church | Home"></asp:Literal>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>RC Church | Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-container">
		<div class="container1" style="padding: 0px;">
			<div id="mySlides">
            <%--<asp:Label ID="lblslide" runat="server" />--%>
				<div id="slide1">
					<img src="images/slider2.jpg" alt="Slide 1 jFlow Plus" />
                    <br />
                    jesus
				</div>
                
				<div id="slide2">
					<img src="images/slider1.jpg" alt="Slide 2 jFlow Plus" />
				</div>
				<div id="slide3">
					<img src="images/slider3.jpg" alt="Slide 3 jFlow Plus" />
				</div>
                <div id="slide4">
					<img src="images/slider3.jpg" alt="Slide 3 jFlow Plus" />
				</div>
			</div>
           

			<div id="myController">
            <%--<asp:Label ID="lblslidecontrol" runat="server" />--%>
				<span class="jFlowControl"></span> 
                <span class="jFlowControl"></span>
				<span class="jFlowControl"></span>
			</div>

			<section class="jFlowPrev">
				<div></div>
			</section>
			<section class="jFlowNext">
				<div></div>
                </section>
			<%--<marquee direction="left" scrolldelay="120">Site under construction</marquee>--%>

			<div class="box">
				<div class="content">
					

					<div>
                    <table>
                    <tr>
                    <td colspan="2">
                    <h3>Welcome to  Holy Redeemer's Church</h3>
                    </td>
                    </tr>
                    <tr>
                    <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
                    <p style="text-align:justify">The Diocese of Palayamkottai is situated in the southeast end of INDIA.  It covers up two revenue districts namely Tirunelveli and Tuticorin, which are located in the southern part of the state of Tamil Nadu.  To be more specific the diocese area comprises of 15 unions in Tirunelveli district and 3 unions in tuticorin district.
</p>
					<p style="text-align:justify">There are 453 panchayats (village administration) and approximately 1935 hamlets.  Hence our diocese falls within the district of Tirunelveli, which has a population of around 3,000,000 of which 1,21,825 are Catholics.
						  


					</p>
                    </td>
                    <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
                    <img class="imgl" src="images/index_benxvi.jpg" alt="" width="110"
						height="150" />
                    </td>
                    </tr>
                    <tr>
                    <td colspan="2" class="clear">
                    
                    </td>
                    </tr>
                    <tr>
                    <td colspan="2">
                    <img class="imgl" src="images/bishop_Jude_Paulraj.jpg" alt="" width="110"
						height="150" />
                         <p style="text-align:justify">
						The people are mostly dependent on agriculture and most of them are agriculture laborers. Due to the failure of monsoon or untimely monsoon agriculture is largely a failure.  Hence the area is mostly poverty prone and the rate of unemployment is quite high.
The political scene of the area is not quite satisfactory as the people are divided on the basis of caste.</br> 
					</p>
					<p style="text-align:justify">
						Our Diocese has 46 parishes and each with around ten mission stations with chapels and many without chapels. There are 76 Diocesan priests and 40 religious priests working in the diocese. 
                        </p>
                        <p style="text-align:justify"> The present diocese is carved out from Madurai Diocese in the year 1973 and His Excellency Rt. Rev. Jude Paulraj D.D is our present Bishop given AD 2000.
					</p>
                    <p style="text-align:justify">Establishment of “Basic Christian Communities” (BCC) in all the villages is our goal. So far Seventy five percentages (75%) of our task is complete.  Ten to fifteen catholic families that are living adjacent to one another geographically will be made into one BCC community.  They will assist one another to better live their faith in their given situation.</p>
                    <p style="text-align:justify">They know one another well and hence will be in a better position to assist each other and families.  If one gets lagging behind in living of faith they will be encouraged.  They come together twice in a week to pray, to reflect on biblical values and to share their joys and sorrows.</p>
                    <p style="text-align:justify">The disadvantaged and the marginalized people are given special attention as they are from the vulnerable section of the society.  Education and Basic Health facilities being in the basic needs of the society as parameters of development we encourage the people to educate their children and to have proper Health Care systems established.</p>
                    <p style="text-align:justify">We run 6 schools for this cause and there is 1750 students study in our schools. Administration of Sacraments and Sacramental are given due importance as often as possible in villages and in BCC’s. We made all the efforts to reach the people and energize them in keeping the Catholic candle burning throughout their life.</p>
                    </td>
                    </tr>
                    </table>
										

			    
					
					
					
					</div>
                    <div>
                    </div>
				</div>

				<div class="sidebar">
                <table>
                        <tr>
                        <td>
					<div class="subnav">
                    
                        
                        <center>
						<h5>Daily Verse</h5>
                        </center>
                        <p><asp:Label ID="lblbible" runat="server" /></p>
                        
						<%--I can do everything through him who gives me strength - Phil 4:13--%>
						<%--<ul>
							<li></li>
							<li>
							  <ul>
								  <li></li>
									<li></li>
								</ul></li>
							<li>
							  <ul>
								  <li></li>
									<li>
									  <ul>
										  <li></li>
											<li></li>
										</ul></li>
								</ul></li>
							<li></li>
						</ul>--%>
					</div>
                    </td>
                        </tr>
                        </table>
					<div id="featured" align="center">
						<ul>
							<li>
								<h5>Parish Priests</h5>
								<p class="imgholder" style="width:80px;">
									<asp:Image ID="father" ImageUrl="~/images/father1.JPG" runat="server" height="90" width="80"/><br/>
                                    <br/><br/>
                                    
				        </p>

								<p>
                                	<b>Rev. Fr. S.M. Arulraj</b><br/>
                                    <i>RC Church, Puliangudi</i><br/>
                                    Phone: 9952501125<br/>
                                    Email:parishpriest@rcchurchpuliangudi.org                         
                                </p>
						</li>
                        <li>
							<%--<h5>Parish Priests</h5>--%>
								<p class="imgholder" style="width:80px;">
									<asp:Image ID="Image1" ImageUrl="~/images/father2.JPG" runat="server" height="90" width="80"/><br/>
                                    <br/><br/>
                                    
				        </p>

								<p>
                                	<b> A.ROBIN </b><br/>
                                    (Asst.Parish Priest)<br />
                                    <i>RC Church, Puliangudi</i><br/>
                                    Phone: 9003994075<br/>
                                                            
                                </p>
						</li></ul>
					</div>
				</div>



				<div class="clear"></div>
			</div>


		</div>
		<div class="main-container"></div>

		
	</div>

	

	<div class="main-container"></div>

    </br>
       </br>
<a style="display: none;" href="#" id="toTop"><span id="toTopHover"></span>To Top</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

