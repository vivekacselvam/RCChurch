using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Contuctus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendMail()
{
    // Gmail Address from where you send the mail
    var fromAddress = "feedbackrcchurch@gmail.com";
    // any address where the email will be sending
    var toAddress = txtmail.Text.ToString(); 
    //Password of your gmail address
    const string fromPassword = "9865124551a";
     // Passing the values and make a email formate to display
    string subject ="Feeedback from "+ txtname.Text.ToString()+", Mail ID : "+txtmail.Text;
    string body ="Feedback : "+ txtfeedback.Text;
    //body += "Email: " + YourEmail.Text + "\n";
    //body += "Subject: " + YourSubject.Text + "\n";
    //body += "Question: \n" + Comments.Text + "\n";
    // smtp settings
    var smtp = new System.Net.Mail.SmtpClient();
    {
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        smtp.Credentials = new System.Net.NetworkCredential(fromAddress, fromPassword);
        smtp.Timeout = 20000;
    }
    // Passing values to smtp object
    smtp.Send(fromAddress, "holyredeemers@rcchurchpuliangudi.org", subject, body);
    smtp.Send(fromAddress, "parishpriest@rcchurchpuliangudi.org", subject, body);
    
}

    protected void On_Send_feedback(object sender, EventArgs e)
{
    try
    {
        //here on button click what will done 
        SendMail();
        Panel1.Visible = true;
        //var clientScript = Page.ClientScript;
        //clientScript.RegisterClientScriptBlock(this.GetType(), "AlertScript", "alert('ERROR')'", true);
        //Label lbl = new Label();
        //lbl.Text = "<script language='javascript'>alert(Hai);</script>";
        //Page.Controls.Add(lbl);
        //DisplayMessage.Text = "Your Comments after sending the mail";
        //DisplayMessage.Visible = true;
        //YourSubject.Text = "";
        //YourEmail.Text = "";
        //YourName.Text = "";
        //Comments.Text = "";
    }
    catch (Exception ex) 
    {
        //lblerror.Text = ex.ToString();
    }
}
    protected void Onclick(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Response.Redirect("contactus.aspx");
        txtname.Text = "";
        txtmail.Text = "";
        txtfeedback.Text = "";
    }
}