using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblerror.Text = "";
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        if (txtname.Text == "rcchurch" && txtpass.Text == "jesus@123")
        {
            Session["user"] = txtname.Text;
            Session["pass"] = txtpass.Text;
            Response.Redirect("AddDeletebible.aspx");
        }
        else
        {
            lblerror.Text = "Invalid Login";
            //Response.Redirect("Login.aspx");
            
        }
            
    }
    protected void txtclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpass.Text = "";
        lblerror.Text = "";
    }
}