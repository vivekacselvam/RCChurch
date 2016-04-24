using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

public partial class AddDeletebible : System.Web.UI.Page
{
    string connection = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
    string adddate;
    int index;
    //DataClass data = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //compare1.ControlToCompare = DateTime.Now.ToString("MM/dd/yyyy");
        adddate = "";
        lblerror.Text = "";
        PanelEdit.Visible = false;
        if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        table();
        //try
        //{
        //    //string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
        //    MySqlConnection con = new MySqlConnection(connection);
        //    string s = "select * from bible1";
        //    MySqlDataAdapter da = new MySqlDataAdapter(s, con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds, "tab");
        //    GridView1.DataSource = ds.Tables[0];
        //    GridView1.DataBind();
        //}
        //catch (Exception ex)
        //{

        //}
        
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        //lblerror.Text = Convert.ToDateTime(txtdate.Text).ToString("yyyy/MM/dd");
        //try
        //{
            //string conn = 
            //string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
            MySqlConnection con = new MySqlConnection(connection);
            con.Open();
            MySqlCommand com1 = new MySqlCommand("select date from bible where date='" + Convert.ToDateTime(txtdate.Text).ToString("yyyy/MM/dd") + "'", con);
            MySqlDataReader dr = com1.ExecuteReader();
            while (dr.Read())
            {
                adddate = dr[0].ToString();
            }
            con.Close();
            if (adddate == "")
            {
                MySqlConnection con1 = new MySqlConnection(connection);
                con1.Open();
                string s = "INSERT INTO bible (date,bible_details) values('" + Convert.ToDateTime(txtdate.Text).ToString("yyyy/MM/dd") + "','" + txtbible.Text + "')";
                MySqlCommand com = new MySqlCommand(s, con1);
            com.ExecuteNonQuery();
            con1.Close();
            }
            else
            {

                lblerror.Text = "Already have Daily Verse in this date <b>" + Convert.ToDateTime(txtdate.Text).ToString("MM/dd/yyyy") + "</b> PLease select another date";
            }
            
            GridView1.DataBind();
        //}
        //catch (Exception ex)
        //{

        //}
            //try
            //{
            //    //string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
            //    MySqlConnection con1 = new MySqlConnection(connection);
            //    string s1 = "select * from bible1";
            //    MySqlDataAdapter da1 = new MySqlDataAdapter(s1, con1);
            //    DataSet ds1 = new DataSet();
            //    da1.Fill(ds1, "tab");
            //    GridView1.DataSource = ds1.Tables[0];
            //    GridView1.DataBind();
            //}
            //catch (Exception ex)
            //{

            //}
            table();
            txtdate.Text = "";
        txtbible.Text = "";
    }
    protected void On_Row_Edit(object sender, EventArgs e)
    {
        //try
        //{
        //    string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
        //    MySqlConnection con = new MySqlConnection(conn);
        //    string s = "select * from bible";
        //    MySqlDataAdapter da = new MySqlDataAdapter(s, con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds, "tab");
        //    GridView1.DataSource = ds.Tables[0];
        //    GridView1.DataBind();
        //}
        //catch (Exception ex)
        //{

        //}
        //txtbible.Text = "";
        table();
    }
    void table()
    {
        try
        {
            //string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
            MySqlConnection con1 = new MySqlConnection(connection);
            string s1 = "select * from bible where date>='"+DateTime.Now.ToString("yyyy/MM/dd")+"'";
            MySqlDataAdapter da1 = new MySqlDataAdapter(s1, con1);
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
        string bibleid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        //Session["userid"] = userid1;
        MySqlConnection con = new MySqlConnection(connection);
        con.Open();
        string s = "delete from church.bible where bible_id='"+Convert.ToInt64(bibleid)+"'";
        MySqlCommand com = new MySqlCommand(s, con);
        com.ExecuteNonQuery();
        con.Close();
        lblerror.Text = "";
        table();
    }
    protected void On_Row_Update(object sender, GridViewUpdateEventArgs e)
    {
        string bibleid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        TextBox txtdate1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdate");
        TextBox txtbible1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtbible");
        MySqlConnection con = new MySqlConnection(connection);
        con.Open();
        string s = "UPDATE church.bible set date='" + Convert.ToDateTime(txtdate1.Text).ToString("yyyy/MM/dd") + "',bible_details='" + txtbible1.Text + "' where Bible_ID=" + bibleid;
        MySqlCommand com = new MySqlCommand(s, con);
        com.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
       
    }
    protected void On_Row_Cancel(object sender, EventArgs e)
    {
        //try
        //{
        //    //string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
        //    MySqlConnection con = new MySqlConnection(connection);
        //    string s = "select * from bible1";
        //    MySqlDataAdapter da = new MySqlDataAdapter(s, con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds, "tab");
        //    GridView1.DataSource = ds.Tables[0];
        table();
        //}
        //catch (Exception ex)
        //{

        //}
    }
    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    protected void On_Row_Command(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Buttonclick")
        {
            PanelEdit.Visible = true;
            
            index = Convert.ToInt16(e.CommandArgument.ToString());
            GridViewRow row1 = (GridViewRow)GridView1.Rows[index];
            string acceptid = GridView1.DataKeys[row1.RowIndex].Value.ToString();

            MySqlConnection con1 = new MySqlConnection(connection);
            con1.Open();
            MySqlCommand com1 = new MySqlCommand("select * from bible where bible_id='"+acceptid+"'", con1);
            MySqlDataAdapter da = new MySqlDataAdapter(com1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                lbldate.Text = Convert.ToDateTime(dr[1]).ToString("MM/dd/yyyy");
                txteditbible.Text = dr[2].ToString();
            }
            con1.Close();
            lblid.Text = acceptid;
            txteditbible.Focus();
            table();

            
            
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection(connection);
        con.Open();
        string s = "UPDATE bible set bible_details='" + txteditbible.Text + "' where bible_id=" + lblid.Text;
        MySqlCommand com = new MySqlCommand(s, con);
        com.ExecuteNonQuery();
        con.Close();
        table();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        PanelEdit.Visible = false;
        lbldate.Text = "";
        txteditbible.Text = "";
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