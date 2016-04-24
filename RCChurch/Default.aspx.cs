using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //StringBuilder strdiv = new StringBuilder();
        //StringBuilder strdiv1 = new StringBuilder();

        //int j = 0; 
        //for (int i = 1; i <= 50; i++)
        //{
        //    FileInfo fileInfo = new FileInfo(Server.MapPath("~/images/slider" + i + ".jpg"));
        //    try
        //    {
        //        double fileSizeKB = fileInfo.Length / 1024;
        //        j = j + 1;
        //    }
        //    catch
        //    {
        //        break;

        //    }
        //}
        //for (int i = 1; i <= j; i++)
        //{
        //    strdiv.Append("<div id='slide1'><img src='images/slider" + i + ".jpg'" + " alt='Slide "+1+" jFlow Plus' /></div>");
        //    strdiv1.Append("<span class='jFlowControl'></span>");
        //}
        //lblslide.Text = strdiv.ToString();
        //lblslidecontrol.Text = strdiv.ToString();
        try
        {
            string connection = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
            //MySqlConnection con = new MySqlConnection(conn);
            
            //MySqlDataAdapter da = new MySqlDataAdapter(s, con);
            //DataSet ds = new DataSet();
            //da.Fill(ds, "tab");
            //lblbible.Text = ;

            MySqlConnection con = new MySqlConnection(connection);
            con.Open();
            string s = "select bible_details from bible where date='"+DateTime.Now.ToString("yyyy/MM/dd")+"'";
            MySqlCommand com = new MySqlCommand(s, con);
            MySqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
               lblbible.Text=dr[0].ToString();
            }
            con.Close();
            
            
        }
        catch (Exception ex)
        {
           
        }
    }
}