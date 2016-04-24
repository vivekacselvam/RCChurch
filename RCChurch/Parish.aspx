<%@ Page Title="" Language="C#" MasterPageFile="~/mainmaster.master" AutoEventWireup="true" CodeFile="Parish.aspx.cs" Inherits="Parish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titleContent" Runat="Server">
<asp:Literal ID="Literal1" runat="server" Text="RC Church | Our Parish"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 30%;
        }
        .style2
        {
            width: 30%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="main-container">
<center>
			<img alt="" src="images/stripwine.png"/>
<div class="main-container">
		<div class="container1" style="padding: 0px;border-top: 0;">
			<br/>
			<h1>Our Parish</h1>
		</div>
        </div>
        </center>
		<div class="container1" style="padding: 0px;">
        <br />
        <div class="box">
		<div class="content1">
        <table>
        <tr>
                    <td colspan="2" align="left">
                    <h3>Welcome to our parish</h3>
                    </td>
                    </tr>
                    <tr>
                    <td colspan="2" align="center">
                    <img class="imgparish" src="images/parish.jpg" alt="" width="581"
						height="357" />
                   <%-- <asp:Image ID="imgparish" runat="server" CssClass="imgr" ImageUrl="~/images/parish.jpg" 
                            Height="357px" Width="581px" />--%>
                    </td>
                    </tr>
        <tr>
        <td colspan="2">
        <p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Puliangudi is in the civil district of Tirunelveli in the state of Tamil Nadu. It is seventy five kilometers from Palayamkottai (Bishop’s House).The parish of Puliangudi is a Mission parish run by the diocesan priests.  It is a rural mission was constructed in 1883 by the Jesuit missionaries.</p>
        <p style="text-align:justify">In the Year of 1968 our dioceses announced Puliangudi as a individual parish. In the centenary year of 1983 the  whole  parish celebrated as a great event. Various spiritual renewal courses were carried out in connection with the preparation of this centenary celebration.</p>
        <p style="text-align:justify">The parish has got 10 substations. There are 4200 Catholics living in this area. As people of different religious faith live together, Puliangudi mission becomes the center of evangelization.</p>
        </td>
        </tr>       
        <tr>
        <td colspan="2" align="left">
        <br />
        <h4>Pastoral Activities in the Parish:</h4>
        </td>
        </tr>
        <tr>
        <td colspan="2">
        <img class="imgl" src="images/bishop_Jude_Paulraj1.jpg" alt="" />
        <p style="text-align:justify">People in this parish are pious and religious.  They are regular to church activities and especially in Sundays and other feast days.</p>
        <p style="text-align:justify">The parish priest takes more initiatives to meet the people in the main and at the substations at least once in a week and conduct Liturgies and prayer services regularly.  There exist all the pious associations and commissions.</p>
        <p style="text-align:justify">The secret of success in working with people is to know the people.  If possible even to know each and every member of the Catholic family by name, by family, by village etc.,so that each member of the family of God feels that he/she is recognized and makes part and parcel of this family.</p>
        <p style="text-align:justify">Hence all the efforts will be made to visit each village, each family and to know all the members of the family by the parish.  This would also help us to have an up to date census of the parish.</p>
        </td>
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td align="left" class="tdborder">
        <table class="tableparish">
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="lblparish" CssClass="lableparish" runat="server" Text="1. Name of the Vicariate" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label16" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label1" CssClass="lableparish" runat="server" Text="Sankarankovil" />
        </td>
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label2" CssClass="lableparish" runat="server" Text="2. Name of the Parish" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label17" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label3" CssClass="lableparish" runat="server" Text="Puliyangudi" />
        </td>
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label4" CssClass="lableparish" runat="server" Text="3. Date of the establishment of the Parish" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label18" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label5" CssClass="lableparish" runat="server" Text="May 1968" />
        </td>
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label6" CssClass="lableparish" runat="server" Text="4. Name of the Panchayat / Municipality/ Taluk" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label19" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label7" CssClass="lableparish" runat="server" Text="Puliyangudi / Sivagiri" />
        </td>
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label8" CssClass="lableparish" runat="server" Text="5. Name of the Parish Priest" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label20" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label9" CssClass="lableparish" runat="server" Text="S.M. Arulraj" />
        </td>
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label12" CssClass="lableparish" runat="server" Text="6. Name of the Asst.Parish Priest" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label13" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label22" CssClass="lableparish" runat="server" Text="A.Robin" />
        </td>
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label10" CssClass="lableparish" runat="server" Text="7. Date of taking charge in the Parish" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label21" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label11" CssClass="lableparish" runat="server" Text="4th June 2010" />
        </td>
        </tr>
        <%--<tr>
        <td class="tdborder">
        <asp:Label ID="Label12" CssClass="lableparish" runat="server" Text="7.Names of previous Parish Priests<br>&nbsp; &nbsp;with duration of years/months" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label22" CssClass="lableparish" runat="server" Text="<br>:" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label13" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>--%>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label14" CssClass="lableparish" runat="server" Text="8. Year of the Visit" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label23" CssClass="lableparish" runat="server" Text=":" />
        </td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label15" CssClass="lableparish" runat="server" Text="2012" />
        </td>
        </tr>
        </table>
        </td>
        </tr>
        <tr>
                    <td colspan="2" align="left">
                    <h6>Number of pious Association:</h6>
                    </td>
                    </tr>
        <tr>
        <td class="style2 tdborder" align="left"></td>
        <td align="left" class="tdborder">
        <table class="tableparish">
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label24" CssClass="lableparish" runat="server" Text="1. Altar Boy’s Association" />
        </td>
        
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label27" CssClass="lableparish" runat="server" Text="2. Young Women’s Association" />
        </td>
        
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label30" CssClass="lableparish" runat="server" Text="3. Young men’s Association" />
        </td>
        
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label33" CssClass="lableparish" runat="server" Text="4. Legion of Mary" />
        </td>
        
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label36" CssClass="lableparish" runat="server" Text="5. Society  of Vincent de Paul" />
        </td>
        
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label39" CssClass="lableparish" runat="server" Text="6. Renewal Prayer Team" />
        </td>
        
        </tr>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label42" CssClass="lableparish" runat="server" Text="7. B.C.C (Anbiam)" />
        </td>
       
        </tr>
        <%--<tr>
        <td class="tdborder">
        <asp:Label ID="Label12" CssClass="lableparish" runat="server" Text="7.Names of previous Parish Priests<br>&nbsp; &nbsp;with duration of years/months" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label22" CssClass="lableparish" runat="server" Text="<br>:" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label13" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>--%>
        <tr>
        <td class="tdborder" align="left">
        <asp:Label ID="Label45" CssClass="lableparish" runat="server" Text="8. Holy Childhood " />
        </td>
       
        </tr>
        </table>
        </td>
        </tr>
        <tr>
                    <td colspan="2" align="left">
                    <h6>Parish council:</h6>
                    </td>
                    </tr>
                    <tr>
                    <td class="style1 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label25" CssClass="lableparish" runat="server" Text="Structure / set up in the villages to help the parish priest in his pastoral ministry." />
        </td>
        
        </tr>
        <tr>
        <td class="style1 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label26" CssClass="lableparish" runat="server" Text="Each village has a committee to take care of the church." />
        <br />
        <br />
        </td>

        </tr>
        <tr>
                    <td colspan="2" align="left">
                    <h6>Villages where there is Annual Adoration &  Corpus Christi Procession:</h6>
                    </td>
                    </tr>
                    <tr>
                    <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label28" CssClass="lableparish" runat="server" Text="1. Puliangudi" />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label29" CssClass="lableparish" runat="server" Text="2. Chinthamani" />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label31" CssClass="lableparish" runat="server" Text="3. Punnaivanam" />
        </td>
        
        </tr>
        <tr>
                    <td colspan="2" align="left">
                    <h6>Convent chapel:</h6>
                    </td>
                    </tr>
                    <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label32" CssClass="lableparish" runat="server" Text="Franciscan sisters of St. Aloyscois Gunzaga(FSAG)" />
        </td>
        
        </tr>
        <tr>
                    <td colspan="2" align="left">
                    <h6>Pilgrimage centers:</h6>
                    </td>
                    </tr>
                    <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label34" CssClass="lableparish" runat="server" Text="1. Punnaivanam, St. James the Apostle, Feast day 25th July" />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label35" CssClass="lableparish" runat="server" Text="2. Speceol Novena : Novena of our lady of perpetual succor at<br>&nbsp;&nbsp;&nbsp;&nbsp;every	Saturday in Puliyangudi	: Punnaivanam (1 & 3rd Thurs day)" />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label37" CssClass="lableparish" runat="server" Text="3. Annual celebrating with catholic/ non catholic: Punnaivanam" />
        </td>
        
        </tr>
        <tr>
                    <td colspan="2" align="left">
                    <h6>Registers:</h6>
                    </td>
                    </tr>
                    <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label38" CssClass="lableparish" runat="server" Text="Parochial register of baptism" />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label40" CssClass="lableparish" runat="server" Text="Parochial register of confirmation " />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label41" CssClass="lableparish" runat="server" Text="Parochial register of Marriages" />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label43" CssClass="lableparish" runat="server" Text="Parochial register of Deaths" />
        </td>
        
        </tr>
         <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label44" CssClass="lableparish" runat="server" Text="Parochial register of parishioners (status V anima rum)" />
        </td>
        
        </tr>
        <tr>
        <td class="style2 tdborder"></td>
        <td class="tdborder" align="left">
        <asp:Label ID="Label46" CssClass="lableparish" runat="server" Text="Parish inventory" />
        </td>
        
        </tr>
                
                
                
                
                
                
               <tr>
                    <td colspan="2" align="left">
                    <h6>Villages & Chapels:</h6>
                    </td>
                    </tr>  
                
                
                <tr>
        <td class="style2 tdborder"></td>
        <td align="left" class="tdborder">
        <table class="tableparish">
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label47" CssClass="lableparish" runat="server" Text="Total number of villages:" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label48" CssClass="lablevillage" runat="server" Text="12" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label49" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label50" CssClass="lableparish" runat="server" Text="Names of the villages" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label51" CssClass="lablevillage" runat="server" Text="1. Puliangudi" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label52" CssClass="lablevillage" runat="server" Text="7. Thalaivankottai" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label53" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label54" CssClass="lablevillage" runat="server" Text="2. Chinthamani" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label55" CssClass="lablevillage" runat="server" Text="8. Punnaivanam" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label56" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label57" CssClass="lablevillage" runat="server" Text="3. Ramasamiapuram" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label58" CssClass="lablevillage" runat="server" Text="9. Nagaram" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label59" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label60" CssClass="lablevillage" runat="server" Text="4. Vellaikavundanpatti" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label61" CssClass="lablevillage" runat="server" Text="10. Malayadikurichi" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label62" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label63" CssClass="lablevillage" runat="server" Text="5. Chockampatti" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label64" CssClass="lablevillage" runat="server" Text="11. Muthusamyapuram" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label65" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label66" CssClass="lablevillage" runat="server" Text="6. Kadayanallur" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label67" CssClass="lablevillage" runat="server" Text="12. Maduthupatti" />
        </td>
        </tr>
        <%--<tr>
        <td class="tdborder">
        <asp:Label ID="Label12" CssClass="lableparish" runat="server" Text="7.Names of previous Parish Priests<br>&nbsp; &nbsp;with duration of years/months" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label22" CssClass="lableparish" runat="server" Text="<br>:" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label13" CssClass="lableparish" runat="server" Text="" />
        </td>
        </tr>--%>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label68" CssClass="lableparish" runat="server" Text="Names of the villages" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label69" CssClass="lablevillage" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label70" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label71" CssClass="lableparish" runat="server" Text="Where there are chapels:" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label72" CssClass="lablevillage" runat="server" Text="1. Puliyangudi" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label73" CssClass="lablevillage" runat="server" Text="2. Chinthamani" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label74" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label75" CssClass="lablevillage" runat="server" Text="3. Punnaivanam" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label76" CssClass="lablevillage" runat="server" Text="4. Ramasamiapuram" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label77" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label78" CssClass="lablevillage" runat="server" Text="5. Nagaram" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label79" CssClass="lablevillage" runat="server" Text="6. Vellaikavundanpatti" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label80" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label81" CssClass="lablevillage" runat="server" Text="7. Thalaivankottai" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label82" CssClass="lablevillage" runat="server" Text="8. Malayadikurichi" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label83" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label84" CssClass="lablevillage" runat="server" Text="9. Chockampatti" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label85" CssClass="lablevillage" runat="server" Text="" />
        <br />
        <br />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label86" CssClass="lableparish" runat="server" Text="Villages where there are no chapels:" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label87" CssClass="lablevillage" runat="server" Text="1. Madathupatti" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label88" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label89" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label90" CssClass="lablevillage" runat="server" Text="2. Kadayanallur" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label91" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label92" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label93" CssClass="lablevillage" runat="server" Text="3. Muthusamiapuram " />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label94" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label95" CssClass="lableparish" runat="server" Text="Chapels with permanent <br>reservation Of the Blessed Sacrament:" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label96" CssClass="lablevillage" runat="server" Text="<br>1. Puliangudi" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label97" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label98" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label99" CssClass="lablevillage" runat="server" Text="2. Chinthamani" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label100" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        <tr>
        <td class="tdborder">
        <asp:Label ID="Label101" CssClass="lableparish" runat="server" Text="" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label102" CssClass="lablevillage" runat="server" Text="3. Punnaivanam" />
        </td>
        <td class="tdborder">
        <asp:Label ID="Label103" CssClass="lablevillage" runat="server" Text="" />
        </td>
        </tr>
        </table>
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

