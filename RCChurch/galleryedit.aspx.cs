using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Net;

public partial class galleryedit : System.Web.UI.Page
{
    string connection = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
    string image_name;
    int index;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        PanelEdit.Visible = false;
        if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        table();
    }
    void table()
    {
        try
        {
            //string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
            MySqlConnection con2 = new MySqlConnection(connection);
            string s1 = "select * from gallery";
            MySqlDataAdapter da1 = new MySqlDataAdapter(s1, con2);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1, "tab");
            GridView1.DataSource = ds1.Tables[0];
            GridView1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }
    protected void On_Row_Deleting(object sender, GridViewDeleteEventArgs e)
    {
        string img_id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        
        //Session["userid"] = userid1;
        
        MySqlConnection con1 = new MySqlConnection(connection);
            con1.Open();
            MySqlCommand com1 = new MySqlCommand("select Img_Name from gallery where Img_Id='" + img_id + "'", con1);
            MySqlDataReader dr = com1.ExecuteReader();
            while (dr.Read())
            {
                image_name = dr[0].ToString();
            }
            con1.Close();
        MySqlConnection con = new MySqlConnection(connection);
        con.Open();
        string s = "delete from church.gallery where Img_Id='" + Convert.ToInt64(img_id) + "'";
        MySqlCommand com = new MySqlCommand(s, con);
        com.ExecuteNonQuery();
        con.Close();
        FtpWebRequest requestFileDelete = (FtpWebRequest)WebRequest.Create("ftp://103.14.120.89/httpdocs/images/" + image_name);
        requestFileDelete.Credentials = new NetworkCredential("rcchurch", "UcyH0oo017");
        requestFileDelete.Method = WebRequestMethods.Ftp.DeleteFile;
        FtpWebResponse responseFileDelete = (FtpWebResponse)requestFileDelete.GetResponse();
        table();
    }
    protected void On_Row_Command(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Buttonclick")
        {
            PanelEdit.Visible = true;

            index = Convert.ToInt16(e.CommandArgument.ToString());
            GridViewRow row1 = (GridViewRow)GridView1.Rows[index];
            string acceptid = GridView1.DataKeys[row1.RowIndex].Value.ToString();

            MySqlConnection con3 = new MySqlConnection(connection);
            con3.Open();
            MySqlCommand com3 = new MySqlCommand("select * from gallery where Img_Id='" + acceptid + "'", con3);
            MySqlDataAdapter da = new MySqlDataAdapter(com3);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                lbliamge.Text = dr[1].ToString();
                txtimagedisplay.Text = dr[2].ToString();
            }
            con3.Close();
            lblid.Text = acceptid;
            txtimagedisplay.Focus();
            table();



        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        MySqlConnection con4 = new MySqlConnection(connection);
        con4.Open();
        string s = "UPDATE gallery set Img_Dis_Name='" + txtimagedisplay.Text + "' where Img_Id=" + lblid.Text;
        MySqlCommand com4 = new MySqlCommand(s, con4);
        com4.ExecuteNonQuery();
        con4.Close();
        table();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        PanelEdit.Visible = false;
        lbliamge.Text = "";
        txtimagedisplay.Text = "";
    }
    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lb = (LinkButton)e.Row.Cells[1].Controls[0];
            if (lb != null)
            {
                lb.Attributes.Add("onclick", "javascript:return " + "confirm('Are you sure you want to delete this record ')");
            }
        }

    } 
}