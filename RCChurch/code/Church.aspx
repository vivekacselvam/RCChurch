<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Church.aspx.cs" Inherits="Church" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>R.C.CHURCH-PULIANGUDI</title>
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

</style>
    <script type="text/javascript" src="Scripts/popup.js" language="javascript">
       
    </script>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js" language="javascript"></script>
    <script type="text/javascript" src="Scripts/jquery-1.6.4.min.js" language="javascript"></script>
    <script type="text/javascript">
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
<script type="text/javascript">
    $(document).ready(function () {
        $('a.login-window').click(function () {

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
</head>
<body bgcolor="#D7D7D7">
    <form id="form1" runat="server">
    
    <div id="blanket5" style="display: none;">
    
    </div>
        <div>
        <table width="80%">
        <tr>
        <td align="center">
            <table width="100%">
    <tr>
    <td align="center">
     
   
   
        <div id="image1" style="background-image:url('images/site_title_bg.jpg'); width:980px; height:178px; background-repeat:no-repeat">
       <table width="100%" height="100px">
       <tr>
       <td valign="top" width="70%">
       <div class="clock" style="float:left">
<asp:Label ID="Date" runat="server" Font-Bold="true" />
   <div>
   <table width="100%">
   <tr>
   <td align="center">
   <asp:Label ID="hours" runat="server" CssClass="divul" Font-Bold="true" />
   <asp:Label ID="point" runat="server" CssClass="divul" ForeColor="White" Font-Bold="true" Text=":" />
   <asp:Label ID="min" runat="server" CssClass="divul" Font-Bold="true" />
   <asp:Label ID="point1" runat="server" CssClass="divul" Font-Bold="true" ForeColor="White" Text=":" />
   <asp:Label ID="sec" runat="server" CssClass="divul" Font-Bold="true" />
   </td>
   </tr>
   </table>
   
   </div>
     
</div>    

       </td>
       <td valign="middle" align="center" width="30%">
       <table>
       <tr>
       <td align="center">
       
       <a href="#login-box" class="login-window"><asp:Image runat="server" ImageUrl="~/images/button 2.jpg" /></a>
       </td>
       </tr>
       
       </table>
       </td>
       </tr>
       </table>
     
       
    </div>
    <div id="image2" style="background-image:url('images/banner_bg blue.jpg'); width:980px; height:200px; background-repeat:no-repeat">
    <table height="200px" width="100%">
    <tr>
    <td colspan="2">
     <div>
        <marquee direction="left" scrolldelay="120">Site under construction</marquee>
        </div>
    </td>
    </tr>
   <%-- <tr>
    <td width="60%" >
    </td>
    <td valign="bottom" width="40%" align="center">
    <asp:ImageButton ID="btnclick" runat="server" ImageUrl="~/images/btn_login.jpg" OnClientClick="javascript:return popup1('popUpDiv5')" />
    </td>
    </tr>--%>
    </table>
    </div>
    <div id="image3" style="background-image:url('images/templatemo_menu_bg.jpg'); width:980px; height:69px; background-repeat:no-repeat">
     <table width="80%" style="height: 64px">
     <tr>
     <td align="center" width="13%">
     <a href="" class="one" >Home</a>
     </td>
     <td align="center" width="13%">
     <a href="" class="one">Parish</a>
     </td>
     <td align="center" width="13%">
     <a href="" class="one">Pious</a>
     </td>
     <td align="center" width="13%">
     <a href="" class="one">Inventory</a>
     </td>
     <td align="center" width="13%">
      <a href="" class="one">Institution</a>
     </td>
     <td align="center" width="13%">
      <a href="" class="one">Gallery</a>
     </td>
     </tr>
     </table>
    </div>
    

    </td>
    </tr>
    </table>
    <table width="100%">
    <tr>
    <td width="60%">
        <table width="90%">
    <tr>
    <td>
    <table>
    <tr>
    <td>
        <asp:Image ID="imgchurchhistory" runat="server" ImageUrl="~/images/templatemo_header_bg.png" />

    </td>
    <td valign="middle">
        <asp:Label ID="lblchurchhistory" runat="server" Text="CHURCH HISTORY" />

    </td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td>
    <table cellpadding="0" cellspacing="0">
    <tr>
    <td colspan="2">
    <div style="float:left;">
    <table cellspacing="10">
    <tr>
    <td>
    <asp:Image ID="imgchurch" runat="server" ImageUrl="~/images/church.png" />
    </td>
    </tr>
    </table>
    </div>
    <div>
        <p style="font-family:Calibri; text-align:justify;">In the olden days Puliyangudi was one among the various sub-stations of vast and versatile Parish Sendamaram. St. James Church of Puliyangudi has its old history which tells vividly the story of the spread of Christianity. From the authentic documents it is known has Christians were living in Tadampatti, Punnaiyarpuram, and Nadupatti even in 17th century. If we go through the 18th century Tamil Nadu History we can find out the blood shed of the Christians caused by the Muslims. The same unwanted incident happened in Tadampatti also. The Church was destroyed by the troops of Navab in 1736.     Their fantiasm paved the way for a fantastic growth of Christianity. They ferventualy hoped that Christianity would fade away but actually it flourished. Really their destruction helped for the concrete construction of Christianity. After the ruin of Tadampatti the 20 Christian families took refuge at Punnaivanam, where St. James Church was built with the help of Talaivankottai Zamindar. Again the Church was rebuilt by one Gnanapragasam Pillai, and was complied by his son Viagappa Pillai. Later it was remodeled by a Christian Moopanar of Sendamaram. In June 1968 Puliyangudi was detached from Sendamaram and became a separate Parish with Rev. Fr. P. Gnanapragasam as its first Parish Priest. A decent house was built at cost of Rs. 40,000 and blessed by Rev. Durai Raj on 20th June 1976. The centenary of this Church was celebrated on 26.06.1983. During his period, people were well brought up in spiritual life. The centaury of this church was celebrated on 26th June 1983. The entire Priest those have been there, have put their whole spirit to develop the people economically and spiritually. People are saying devoted and faithful.
</p>

    </div>
    </td>
    
   
    </tr>
    </table>
    </td>
    
    </tr>
    <tr>
    <td colspan="3">
    <asp:Image ID="img" runat="server" ImageUrl="~/images/templatemo_header_bg.png" />
    </td>
    </tr>
   <tr>
    <td colspan="3" align="left">
</td>
    </tr>
    </table>

    </td>
    <td valign="top">
    <table width="90%">
    <tr>
    <td>
    <table>
    <tr>
    <td>
        <asp:Image ID="Image6" runat="server" ImageUrl="~/images/templatemo_header_bg.png" />

    </td>
    <td valign="middle">
        <asp:Label ID="lblparis" runat="server" Text="PARISH PRIEST" />

    </td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    <td align="center">
    <asp:Image ID="Image5" runat="server" ImageUrl="~/images/father.png" />
    </td>
    </tr>
    
    <tr>
    <td>
    <table width="100%" border="1" cellpadding="4" style="border-collapse:collapse">
    <tr>
    <td>
    <asp:Label ID="lbl1" runat="server" Text="Patron of Parish" Font-Bold="true" />
    </td>
    <td>
    <asp:Label ID="lbl2" runat="server" Text="Holy redeemer" Font-Bold="true" />
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" Text="Diocese Priest Name" />
    </td>
    <td>
    <asp:Label ID="Label2" runat="server" Text="Rev.Fr.Arulraj S.M." />
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label3" runat="server" Text="Date of Birth" />
    </td>
    <td>
    <asp:Label ID="Label4" runat="server" Text="19-04-1980" />
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label5" runat="server" Text="Date of Ordination" />
    </td>
    <td>
    <asp:Label ID="Label6" runat="server" Text="15-04-2007" />
    </td>
    </tr>
     <tr>
    <td>
    <asp:Label ID="Label7" runat="server" Text="Phone" />
    </td>
    <td>
    <asp:Label ID="Label8" runat="server" Text="9952501125" />
    </td>
    </tr>
     <tr>
    <td>
    <asp:Label ID="Label9" runat="server" Text="Email" />
    </td>
    <td>
    <asp:Label ID="Label10" runat="server" Text="aruljoys@yahoo.com" />
    </td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
    
    </tr>
    </table>
    </td>
    </tr>
    </table>
    <table width="100%">
    <tr>
    <td align="center">
    
     <div id="image4" align="center" style="background-image:url('images/templatemo_footer_bg.jpg'); width:980px; height:69px; background-repeat:no-repeat">
     <table width="80%" style="height: 64px">
     <tr>
     <td align="center" width="13%">
     <a href="" class="two" >Home</a>
     </td>
     <td align="center"  width="5%">
     |
     </td>
     <td align="center" width="13%">
     <a href="" class="two" >Parish</a>
     </td>
     <td align="center"  width="5%">
     |
     </td>
     <td align="center" width="13%">
     <a href="" class="two" >Pious</a>
     </td>
     <td align="center"  width="5%">
     |
     </td>
     <td align="center" width="13%">
     <a href="" class="two" >Inventory</a>
     </td>
     <td align="center"  width="5%">
     |
     </td>
     <td align="center" width="13%">
      <a href="" class="two" >Institution</a>
     </td>
     <td align="center"  width="5%">
     |
     </td>
     <td align="center" width="13%">
      <a href="" class="two" >Gallery</a>
     </td>
     </tr>
     <tr>
     <td colspan="11" align="center">
     Copyright © 2012 R.C.CHURCH | Designed by DIOCOMPUTO | Maintained by Vivek 
     </td>
     </tr>
     </table>
    </div>
    </td>
    </tr>
    </table>

        </td>
        </tr>
        </table>
    </div>
    <div id="popUpDiv5" style="display: none; background-color:White;" >

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
    </div>


    <div id="login-box" class="login-popup">
         
          <table width="100%">
          <tr>
          <td align="right">
          <a href="#" class="close"><img src="images/close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
          </td>
          </tr>
          <tr>
          <td align="center">
                          <fieldset class="textbox">
                          
            	<label class="username">
                <div>
                <asp:Label ID="Label12" Text="Username or email" CssClass="loginfont" runat="server" />
                </div>
                <div>
                <asp:TextBox ID="txtusername" runat="server" CssClass="textboxback" />
                </div>
                </label>
                <label class="password">
                <div>
                <asp:Label ID="Label13" Text="Password" CssClass="loginfont" runat="server" />
                </div>
                <div>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" CssClass="textboxback" />
                </div>
                </label>
                <div >
                <asp:Button ID="Button1" class="submit button" Text="Sign in" runat="server" />
                 </div>  
               <div style="float:left;">
                <asp:LinkButton ID="lnksinpop" CssClass="forgot" Text="Forgot your password?" runat="server" />
                   
                </div> 
                </fieldset>

          </td>
          </tr>
          </table>
         
</div>
   
    </form>
</body>
</html>
