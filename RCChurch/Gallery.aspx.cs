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
using System.Data.SqlClient;

public partial class Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connection = "SERVER=localhost; DATABASE=church;UID=root; password=root;";
        //string[] filePaths = Directory.GetFiles(@"rcchurchpuliangudi.org / httpdocs / images");
        StringBuilder strdiv = new StringBuilder();
        StringBuilder strdiv1 = new StringBuilder();
        List<string> imagename = new List<string>();
        List<string> imagetitle = new List<string>();

        int j = 0;
        MySqlConnection con = new MySqlConnection(connection);
        con.Open();
        MySqlCommand com = new MySqlCommand("select count(*) from gallery", con);
        MySqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {
            j =Convert.ToInt32(dr[0].ToString());
        }
        con.Close();
     //for(int i=1;i<=50;i++)
     //   {
     //           FileInfo fileInfo = new FileInfo(Server.MapPath("~/images/slide" + i + ".jpg"));
     //           try
     //           {
     //               double fileSizeKB = fileInfo.Length / 1024;
     //               j = j+1;
     //           }
     //           catch
     //           {
     //               break;  
                    
     //           } 
     //   }
        MySqlConnection con1 = new MySqlConnection(connection);
        con1.Open();
        SqlCommand com1 = new SqlCommand("select * from gallery",con1);
        com1.Parameters.Add("gal",1);
        MySqlDataAdapter da = new MySqlDataAdapter(com1);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataTable dt = ds.Tables[0];
        imagename.Add("");
        imagetitle.Add("");
        foreach (DataRow dr1 in dt.Rows)
        {
            imagename.Add(dr1[1].ToString());
            imagetitle.Add(dr1[2].ToString());
        }
        con1.Close();

     for (int i = 1; i <= j; i++)
     {

         if ((i != j) && (i % 3 != 0))
         {

             strdiv1.Append("<li><a data-gal='prettyPhoto[gallery2]' href='images/" + imagename[i] + "' title='" + imagetitle[i] + "'><img" +
                                " src='images/" + imagename[i] + "' width='260' height='190' alt='' /></a></li>");


         }
         else if((i%3==0))
         {
             strdiv1.Append("<li class='last'><a data-gal='prettyPhoto[gallery2]' href='images/" + imagename[i] + "' title='" + imagetitle[i] + "'><img" +
                                " src='images/" + imagename[i] + "' width='260' height='190' alt='' /></a></li>");
            
         }
         else if (i == j)
         {
             strdiv1.Append("<li class='last'><a data-gal='prettyPhoto[gallery2]' href='images/" + imagename[i] + "' title='Image " + imagetitle[i] + "'><img" +
                                " src='images/" + imagename[i] + "' width='260' height='190' alt='' /></a></li>");
         }
        }
     strdiv.Append("<div id='gallery' class='box'><ul>" +strdiv1.ToString()+



    "</ul><br class='clear' /></div>");

        lblimg.Text = strdiv.ToString();
    }
}