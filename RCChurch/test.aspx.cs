using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string conn = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
            MySqlConnection con = new MySqlConnection(conn);
            string s = "select * from bible where bible_id="+1+"";
            MySqlDataAdapter da = new MySqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "tab");
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            error.Text = ex.ToString();
        }
    }
}