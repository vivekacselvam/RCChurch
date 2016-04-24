<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Contuctus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleContent" Runat="Server">
<asp:Literal ID="Literal1" runat="server" Text="RC Church | Contact Us"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
<link href="Styles/Site.css" type="text/css" rel="Stylesheet" />
<style type="text/css">
#blanket5
        {
            background-color: #111;
            opacity: 0.65;
            filter: alpha(opacity=65);
            position: absolute;
            z-index: 9001;
            top: 0px;
            left: 0px;
            width: 100%;
        }
        #popUpDiv5
        {
            position: absolute; /*width: 300px;
            height: 300px;
            z-index: 9002;*/
            width: 550px;
            height: 220px;
            z-index: 9002;
            margin-left: -120px;
            border-left: 10px solid #eee;
            border-right: 10px solid #eee;
            border-top: 10px solid #eee;
            border-bottom: 20px solid #eee;
        }
        .Err
        {
            color: orange;
            font: 700 12px sans-serif;
        }
        .clear
        {
            height: 15px;
        }
        .overlay
{
        position: fixed;
        z-index: 100000;
        top: 0px;
        left: 0px;
        background-color: #FFFFFF;
        width: 100%;
        height: 100%;
        filter: Alpha(Opacity=70);
        opacity: 0.70;
        -moz-opacity: 0.70;
    }
    * html .overlay {
        position: absolute;
        height: expression(document.body.scrollHeight > document.body.offsetHeight ? document.body.scrollHeight : document.body.offsetHeight + 'px');
        width: expression(document.body.scrollWidth > document.body.offsetWidth ? document.body.scrollWidth : document.body.offsetWidth + 'px');
    }


.loader {
        z-index: 100000;
        position: fixed;
        width: 120px;
        margin-left: -60px;
        top: 50%;
        left: 55%;
    font-style: italic;
}
    * html .loader {
        position: absolute;
        margin-top: expression((document.body.scrollHeight / 4) + (0 - parseInt(this.offsetParent.clientHeight / 2) + (document.documentElement && document.documentElement.scrollTop || document.body.scrollTop)) + 'px');
    }

</style>
    <script type="text/javascript" src="Scripts/popup.js" language="javascript">
       
    </script>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js" language="javascript"></script>
    <script type="text/javascript" src="Scripts/jquery-1.6.4.min.js" language="javascript"></script>
<%--    <script type="text/javascript">
        $(document).ready(function () {
            // Create two variable with the names of the months and days in an array
            var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
            var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

            // Create a newDate() object
            var newDate = new Date();
            // Extract the current date from Date object
            newDate.setDate(newDate.getDate());
            // Output the day, date, month and year   
            $('#Date').html(dayNames[newDate.getDay()] + " " + newDate.getDate() + ' ' + monthNames[newDate.getMonth()] + ' ' + newDate.getFullYear());

            setInterval(function () {
                // Create a newDate() object and extract the seconds of the current time on the visitor's
                var seconds = new Date().getSeconds();
                // Add a leading zero to seconds value
                $("#sec").html((seconds < 10 ? "0" : "") + seconds);
            }, 1000);

            setInterval(function () {
                // Create a newDate() object and extract the minutes of the current time on the visitor's
                var minutes = new Date().getMinutes();
                // Add a leading zero to the minutes value
                $("#min").html((minutes < 10 ? "0" : "") + minutes);
            }, 1000);

            setInterval(function () {
                // Create a newDate() object and extract the hours of the current time on the visitor's
                var hours = new Date().getHours();
                // Add a leading zero to the hours value
                $("#hours").html((hours < 10 ? "0" : "") + hours);
            }, 1000);
        });
</script>
--%><script type="text/javascript">
        $(document).ready(function () {
            $('a.login-window').click(function () {
                document.getElementById("ctl00_ContentPlaceHolder1_txtname").value = '';
                document.getElementById("ctl00_ContentPlaceHolder1_txtmail").value = '';
                document.getElementById("ctl00_ContentPlaceHolder1_txtfeedback").value = '';
                // Getting the variable's value from a link 
                var loginBox = $(this).attr('href');

                //Fade in the Popup and add close button
                $(loginBox).fadeIn(300);

                //Set the center alignment padding + border
                var popMargTop = ($(loginBox).height() + 24) / 2;
                var popMargLeft = ($(loginBox).width() + 24) / 2;

                $(loginBox).css({
                    'margin-top': -popMargTop,
                    'margin-left': -popMargLeft
                });

                // Add the mask to body
                $('body').append('<div id="mask"></div>');
                $('#mask').fadeIn(300);

                return false;
            });

            // When clicking on the button close or the mask layer the popup closed
            $('a.close, #mask').live('click', function () {
                $('#mask , .login-popup').fadeOut(300, function () {
                    $('#mask').remove();
                });
                return false;
            });
        });
</script>
<script type="text/javascript">
    function blink() {
        //        alert("1");
        var e = document.getElementById("ctl00_imgdonate");


        e.src = 'images/DonateDark.png';


        setTimeout("blink1();", 500);
        //   e.style.visibility = ( e.style.visibility == 'visible' )? 'hidden' : 'visible';

    }
    function blink1() {
        //        alert("1");
        var e = document.getElementById("ctl00_imgdonate");


        e.src = 'images/DonateLite.png';


        setTimeout("blink();", 500);
        //   e.style.visibility = ( e.style.visibility == 'visible' )? 'hidden' : 'visible';

    }
</script>
<script type="text/javascript">
    $(function () {
        // set opacity to nill on page load
        $("ul#menu span").css("opacity", "0");
        // on mouse over
        $("ul#menu span").hover(function () {
            // animate opacity to full
            $(this).stop().animate({
                opacity: 1
            }, 'slow');
        },
        // on mouse out
		function () {
		    // animate opacity to nill
		    $(this).stop().animate({
		        opacity: 0
		    }, 'slow');
		});
    });
</script>
<script type="text/javascript">
    $(function () {
        // set opacity to nill on page load
        $("ul#donate span").css("opacity", "0");
        // on mouse over
        $("ul#donate span").hover(function () {
            // animate opacity to full
            $(this).stop().animate({
                opacity: 1
            }, 'slow');
        },
        // on mouse out
		function () {
		    // animate opacity to nill
		    $(this).stop().animate({
		        opacity: 0
		    }, 'slow');
		});
    });
</script>
<script type="text/javascript" language="javascript">
    function feedback() {

        var e = document.getElementById("ctl00_ContentPlaceHolder1_txtname");
        var e1 = document.getElementById("ctl00_ContentPlaceHolder1_txtmail");
        var e2 = document.getElementById("ctl00_ContentPlaceHolder1_txtfeedback");
        var mail = e2.value;
        if (e.value == "") {
            alert("Please enter your name");
            e.focus();
            return false
        }
        else if (e1.value == "") {
            alert("Please enter your Email");
            e1.focus();
            return false
        }
        else if (e2.value == "") {
            alert("Please enter your Feedback");
            e2.focus();
            return false
        }
        else {



        }



    }

</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-container">
		<center>
			<img alt="" src="images/stripcontact.png"/>
		</center>
	</div>
<div class="main-container">
		<div class="container1" style="padding: 0px;border-top: 0;">
			<br/>
			<h1>Contact Us</h1>
			<%--<div class="clear"></div>--%>
		</div>
        </div>
        <div class="container1">
        <center>
        <table style="border:0px solid #CCC">
        <tr>
        <td align="left" class="addressshadow" bgcolor="#6A6A6A" width="50%" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <asp:Label ID="lbladdress" Text="Address" Font-Size="Large" runat="server" ForeColor="White" />
        </td>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        </td>
        <td align="left" class="addressshadow" bgcolor="#6A6A6A" width="50%" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <asp:Label ID="lblmap" Text="Map view" Font-Size="Large" runat="server" ForeColor="White" />
        </td>
        </tr>
        <tr>
        <td width="50%" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        &nbsp;
        </td>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        </td>
        <td width="50%" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        &nbsp;
        </td>
        </tr>
        <tr>
        <td align="left" width="50%" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <table style="border:0px solid #CCC; padding:0px;">
        <tr>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <b>HOLY REDEEMER'S CHURCH</b>
        <%--<asp:Label ID="lblad1" CssClass="address" runat="server" Text="HOLY REDEEMER'S CHURCH" />--%>
        </td>
        </tr>
        <tr>
         <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
         <i>T.N.Puthukudi - Puliangudi</i>
        <%--<asp:Label ID="Label1" CssClass="address" runat="server" Text="T.N.Puthukudi - Puliangudi" />--%>
        </td>
        </tr>
        <tr>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <i>PIN-627855</i>
        <%--<asp:Label ID="Label2" CssClass="address" runat="server" Text="PIN-627855" />--%>
        </td>
        </tr>
        <tr>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <i>Tirunelveli - District</i>
        <%--<asp:Label ID="Label3" CssClass="address" runat="server" Text="Tiruneveli - District" />--%>
        </td>
        </tr>
        <tr>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <i>Sivagiri - Taluk</i>
        <%--<asp:Label ID="Label4" CssClass="address" runat="server" Text="Sivagiri - Taluk" />--%>
        </td>
        </tr>
        <tr>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <i>PHONE: 04636235197</i>
        <%--<asp:Label ID="Label5" CssClass="address" runat="server" Text="PHONE: 04636235197" />--%>
        </td>
        </tr>
        <tr>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <i>MOBILE NO: +919952501125</i>
        <%--<asp:Label ID="Label6" CssClass="address" runat="server" Text="MOBILE NO: +919952501125" />--%>
        </td>
        </tr>
        <tr>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <i>MAIL ID: holyredeemers@rcchurchpuliangudi.org</i>
        <%--<asp:Label ID="Label7" CssClass="address" runat="server" Text="MAIL ID: holyredeemers@rcchurchpuliangudi.org" />--%>
        </td>
        </tr>
        <tr>
        <td align="center" colspan="3" style="border-left:0px solid #CCC; height:140px; vertical-align:bottom; border-right:0px solid #CCC">
        <a href="#login-box" class="login-window"><asp:ImageButton ID="imgfeedback" ImageUrl="~/images/feedback.png" runat="server"
                Height="89px" Width="150px" /></a>
        </td>
        </tr>
        </table>
        </td>
        <td style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        </td>
        <td width="50%" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
        <iframe width="550" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?saddr=RC+Chruch,+Puliyangudi,+Tamil+Nadu&amp;hl=en&amp;sll=9.175459,77.397359&amp;sspn=0.001586,0.001725&amp;geocode=Fc7_iwAdUv2cBCFm4UO-4CdaeCknsPYLOZAGOzFm4UO-4CdaeA&amp;oq=RC+Chruch,+Puliyangudi,+Tamil+Nadu&amp;t=m&amp;mra=ls&amp;ie=UTF8&amp;ll=9.175461,77.397357&amp;spn=0.003172,0.003449&amp;output=embed"></iframe><br /><small><a href="https://maps.google.co.in/maps?saddr=RC+Chruch,+Puliyangudi,+Tamil+Nadu&amp;hl=en&amp;sll=9.175459,77.397359&amp;sspn=0.001586,0.001725&amp;geocode=Fc7_iwAdUv2cBCFm4UO-4CdaeCknsPYLOZAGOzFm4UO-4CdaeA&amp;oq=RC+Chruch,+Puliyangudi,+Tamil+Nadu&amp;t=m&amp;mra=ls&amp;ie=UTF8&amp;ll=9.175461,77.397357&amp;spn=0.003172,0.003449&amp;source=embed" style="color:#0000FF;text-align:left"></a></small>
        <%--<iframe width="550" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.co.in/maps?hl=en&amp;ie=UTF8&amp;ll=9.174889,77.397695&amp;spn=0.012583,0.01929&amp;t=m&amp;z=16&amp;output=embed"></iframe>--%><br /><small><a href="http://maps.google.co.in/maps?hl=en&amp;ie=UTF8&amp;ll=9.174889,77.397695&amp;spn=0.012583,0.01929&amp;t=m&amp;z=16&amp;source=embed" style="color:#0000FF;text-align:left"></a></small>
        </td>
        </tr>
        </table>
        </center>
        </div>
            <%--<div id="popUpDiv5" style="display: none; background-color:White;" >

    <table width="100%">
    <tr>
    <td colspan="2" align="right">
    <asp:ImageButton ID="btnclose" runat="server" ImageUrl="~/images/x.png" OnClientClick="javascript:return popup1('popUpDiv5'); assign()" />
    </td>
    </tr>
    <tr>
    <td align="center">
    <asp:Label ID="lblusername" runat="server" Text="User Name" />
    </td>
    <td align="left">
    <asp:TextBox ID="txtbox" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center">
    <asp:Label ID="lblpassword" runat="server" Text="Password" />
    </td>
    <td align="left">
    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
    <asp:ImageButton ID="imgpoplogin" runat="server" ImageUrl="~/images/btn_login.jpg" />
    </td>
    </tr>
    </table>
    </div>--%>
   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ProgressTemplate>
            <asp:Panel ID="Panel1" CssClass="overlay" runat="server">
                <asp:Panel ID="Panel2" CssClass="loader" runat="server">                      
                     <img alt="loading" src="images/loading.gif" /></asp:Panel>
            </asp:Panel>       
        </ProgressTemplate>
        </asp:UpdateProgress>
 
     <div id="login-box" class="login-popup">
    
        <%-- <div style="width:200px"><a href="#" class="close"><img src="images/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a></div>
         <div style="width:200px">
         <asp:Label ID="lblusername" Text="User Name" ForeColor="White" runat="server" />
         </div>--%>
          <table style="border:0px solid #CCC">
          <tr>
          <td align="right" class="feedback" style=" border-bottom:1px solid #4E4E4E;border-left:0px solid #CCC;border-right:0px solid #CCC">
          <div style="float:left">
          <asp:Label ID="lblfeed" CssClass="feedbacklabel" Font-Bold="true" Text="Send us your feedback !" ForeColor="Yellow" runat="server" />
          </div>
          <div style="float:right"><a href="#" class="close"><img src="images/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a></div>
          
          </td>
          </tr>
          <tr>
          <td class="feedback" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
          <asp:Label ID="lblname" Text="Name:" CssClass="feedbacklabel" ForeColor="White" runat="server"></asp:Label>
          </td>
          </tr>
          <tr>
          <td class="feedback" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
          <asp:TextBox ID="txtname" CssClass="feedbacktext" Width="200px" Height="10px" runat="server" />
          </td>
          </tr>
          <tr>
          <td class="feedback" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
          <asp:Label ID="lblmail" Text="Email:" CssClass="feedbacklabel" ForeColor="White" runat="server"></asp:Label>
          </td>
          </tr>
          <tr>
          <td class="feedback" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
          <asp:TextBox ID="txtmail" CssClass="feedbacktext" Width="200px" Height="10px" runat="server" />
          </td>
          </tr>
          <tr>
          <td class="feedback" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
          <asp:Label ID="lblfeedback" Text="Feedback:" CssClass="feedbacklabel" ForeColor="White" runat="server"></asp:Label>
          </td>
          </tr>
          <tr>
          <td class="feedback" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
          <asp:TextBox ID="txtfeedback" CssClass="feedbacktext" Width="200px" Height="100px" TextMode="MultiLine" runat="server" />
          </td>
          </tr>
          <tr>
          <td class="feedback" style="border-left:0px solid #CCC;border-right:0px solid #CCC">
          <asp:Button ID="btnsend" runat="server" Text="Send Feedback" CssClass="feedbackbutton" OnClientClick="javascript:return feedback();" ForeColor="White" Font-Size="11px" BackColor="#6A6A6A" OnClick="On_Send_feedback" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="#" class="close">Cancel</a>
          </td>
          </tr>
          </table>
         <asp:ValidationSummary ID="Valsum1" runat="server" ValidationGroup="Group1" ShowMessageBox="true" ShowSummary="false" />
         <%--<asp:Label ID="lblerror" runat="server" />--%>
</div>
<asp:Panel ID="Panel1" CssClass="feedbacksend" runat="server" Visible="false">
<div style="width:200px; height:50px; background-color:#303030; border:1px solid #CCC">
<div><asp:Label ID="lblfeedsuccess" Text="Your feedback has been sent !" runat="server" ForeColor="Yellow"></asp:Label></div>
<div align="center"><asp:Button ID="btnok" Text="Ok" runat="server" CssClass="feedbackbutton" ForeColor="White" Font-Size="11px" BackColor="#6A6A6A" OnClick="Onclick" /></div>
</div>
</asp:Panel>
 </ContentTemplate>
 </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
