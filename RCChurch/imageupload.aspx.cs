using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using MySql.Data.MySqlClient;
//using System.Diagnostics;

public partial class imageupload : System.Web.UI.Page
{
    string connection = "SERVER=localhost; DATABASE=church;UID=rcchurch; password=rcchurch;";
    String sourcefilepath = "C:/Users/SathyaWinsSathya/Pictures/Google Talk Received Images/hi1.jpg"; // e.g. “d:/test.docx”
    //string filepath = ;
    string ftpurl = "ftp://103.14.120.89/httpdocs/images"; // e.g. 
    string ftpusername = "rcchurch"; // e.g. username
    string ftppassword = "jesus@123"; // e.g. password

    protected void Page_Load(object sender, EventArgs e)
    {
        PanelImgresize1.Visible = false;
        PanelImgresize2.Visible = false;
        if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("Login.aspx");
        }
        //System.Drawing.Image image = System.Drawing.Image.FromFile(@"C:\Inetpub\vhosts\rcchurchpuliangudi.org\httpdocs\images\hi1.jpg");
    }
    //protected void UploadFileToFTP(object sender, EventArgs e)
    //{
    //    //FtpWebRequest myFtpWebRequest;
    //    //FtpWebResponse myFtpWebResponse;
    //    //StreamWriter myStreamWriter;
    //    //NetworkCredential myNetworkCredential;
    //    //StreamWriter myStream;
    //    //StreamReader myReadStream;

    //    //myFtpWebRequest = (FtpWebRequest)FtpWebRequest.Create(new Uri(""));

    //    //myNetworkCredential = new NetworkCredential();

    //    //myNetworkCredential.UserName = "rcchurch";
    //    //myNetworkCredential.Password = "jesus@123";
    //    //myFtpWebRequest.Credentials = myNetworkCredential;

    //    //myFtpWebRequest.Method = WebRequestMethods.Ftp.UploadFile;
    //    //myFtpWebRequest.UseBinary = true;

    //    //myStream = new StreamWriter(myFtpWebRequest.GetRequestStream());

    //    //myStreamWriter = myStream;

    //    //myReadStream = new StreamReader((Server.MapPath("myTestFile.txt")));

    //    //myStreamWriter.Write(myReadStream.ReadToEnd());

    //    //myStreamWriter.Close();
    //    //myReadStream.Close();

    //    //myFtpWebResponse = (FtpWebResponse)myFtpWebRequest.GetResponse();

    //    //StatusLabel.Text = myFtpWebResponse.StatusDescription;

    //    //myFtpWebResponse.Close();
    //    StreamReader r = new StreamReader(FileUploadControl.FileContent);
    //    //txtData.Text = 

    //    String file = AppDomain.CurrentDomain.BaseDirectory;
    //    UploadToFTP("ftp://103.14.120.89/httpdocs/images/" + FileUploadControl.FileName, file, "rcchurch", "UcyH0oo017");
    //}
    //private bool UploadToFTP(string strFTPFilePath, string strLocalFilePath, string strUserName, string strPassword)
    //{


    //    try
    //    {
    //        //Create a FTP Request Object and Specfiy a Complete Path
    //        FtpWebRequest reqObj = (FtpWebRequest)WebRequest.Create(strFTPFilePath);


    //        //Call A FileUpload Method of FTP Request Object
    //        reqObj.Method = WebRequestMethods.Ftp.UploadFile;


    //        //If you want to access Resourse Protected,give UserName and PWD
    //        reqObj.Credentials = new NetworkCredential(strUserName, strPassword);


    //        // Copy the contents of the file to the byte array.
    //        byte[] fileContents = File.ReadAllBytes(strLocalFilePath);
    //        reqObj.ContentLength = fileContents.Length;
    //        ;

    //        //Upload File to FTPServer
    //        Stream requestStream = reqObj.GetRequestStream();
    //        requestStream.Write(fileContents, 0, fileContents.Length);
    //        requestStream.Close();
    //        FtpWebResponse response = (FtpWebResponse)reqObj.GetResponse();
    //        lblstatus.Text = "Image Uploaded successfully";
    //        response.Close();
    //    }


    //    catch (Exception Ex)
    //    {
    //        Response.Write(Ex);
    //        //throw Ex;
    //    }
    //    return true;
    //}
    protected void ondelete(object sender, EventArgs e)
    {
        DeleteFTP("", "rcchurch", "UcyH0oo017");
    }

    private void DeleteFTP(string strFTPFilePath, string strUserName, string strPassword)
    {
        FtpWebRequest requestFileDelete = (FtpWebRequest)WebRequest.Create("ftp://103.14.120.89/httpdocs/images/hi1.jpg");
        requestFileDelete.Credentials = new NetworkCredential(strUserName, strPassword);
        requestFileDelete.Method = WebRequestMethods.Ftp.DeleteFile;
        FtpWebResponse responseFileDelete = (FtpWebResponse)requestFileDelete.GetResponse();
    }
    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {

        HttpFileCollection uploadedFiles = HttpContext.Current.Request.Files;

        //for (int i = 0; i < uploadedFiles.Count; i++)
        //{
        //    HttpPostedFile userPostFile = uploadedFiles[i];
            FileInfo fi = new FileInfo(FileUploadControl.FileName);
            string ext = fi.Extension;


            if (ext == ".jpg")
            {

                if (FileUploadControl.PostedFile.ContentLength <= 110000)
                {
                    string exist="0";
                    MySqlConnection con = new MySqlConnection(connection);
                    con.Open();
                    MySqlCommand com1 = new MySqlCommand("select Img_Name from gallery where Img_Name='" + FileUploadControl.FileName + "'", con);
                    MySqlDataReader dr = com1.ExecuteReader();
                    while (dr.Read())
                    {
                        exist = "1";
                    }
                    con.Close();
                    if (exist == "0")
                    {
                        try
                        {
                            //uploadFile(FileUploadControl.FileName);
                            //UploadToFTP(userPostFile);
                            string filename = Path.GetFileName(FileUploadControl.FileName);
                            FileUploadControl.SaveAs(Server.MapPath("~/images/" + filename));
                            MySqlConnection con1 = new MySqlConnection(connection);
                            con1.Open();
                            string s = "INSERT INTO gallery (Img_Name,Img_Dis_Name) values('" + FileUploadControl.FileName + "','')";
                            MySqlCommand com = new MySqlCommand(s, con1);
                            com.ExecuteNonQuery();
                            con1.Close();
                            lblstatus.ForeColor = System.Drawing.Color.Green;
                            lblstatus.Text = "Image Uploaded Successfilly";
                            //string folder = Server.MapPath("ftp://103.14.120.89/httpdocs/images/");
                            //FileUploadControl.SaveAs(folder + "/" + filename);
                            //ltr.Text = "Successful.";
                        }
                        catch (Exception EX)
                        {
                            lblstatus.Text = EX.Message;
                        }
                    }
                    else
                    {
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                        lblstatus.Text = "This image already exist";
                    }
                }
                else
                {
                    lblstatus.ForeColor = System.Drawing.Color.Red;
                    //lnkimgresize.Text = "";
                    lblstatus.Text = "Image size exceed 110KB";
                    PanelImgresize1.Visible = true;
                }
            }
            else
            {
                lblstatus.ForeColor = System.Drawing.Color.Red;
                PanelImgresize2.Visible = true;
                //lnkimgresize.Text = "";
                lblstatus.Text = "You can upload only image in JPGE format";
            }

        //}
    }
      //ResizeBitmap(@"C:\Inetpub\vhosts\rcchurchpuliangudi.org\httpdocs\images\", "hi1.jpg", 50, 50);
     //}
    //private bool UploadToFTP(HttpPostedFile fileToUpload)
    //{

    //    // Get the object used to communicate with the server.
    //    string uploadUrl = "ftp://103.14.120.89/httpdocs/images/" + "fileToUpload.FileName";
    //    string fileName = fileToUpload.FileName;
    //    FtpWebRequest request = (FtpWebRequest)WebRequest.Create(uploadUrl + fileName);
    //    request.Method = WebRequestMethods.Ftp.UploadFile;
    //    // This example assumes the FTP site uses anonymous logon.
    //    request.Credentials = new NetworkCredential("rcchurch", "UcyH0oo017");
    //    // Copy the contents of the file to the request stream.


    //    StreamReader sourceStream = new StreamReader(fileToUpload.InputStream);
    //    byte[] fileContents = Encoding.UTF8.GetBytes(sourceStream.ReadToEnd());

    //    sourceStream.Close();
    //    request.ContentLength = fileContents.Length;
    //    Stream requestStream = request.GetRequestStream();
    //    requestStream.Write(fileContents, 0, fileContents.Length);
    //    requestStream.Close();
    //    FtpWebResponse response = (FtpWebResponse)request.GetResponse();
    //    response.Close();
        
    //    return true;

    //}

     //private static Bitmap ResizeBitmap(Bitmap sourceBMP, int width, int height)
     //{
     //    Bitmap result = new Bitmap(width, height);
     //    using (Graphics g = Graphics.FromImage(result))
     //        g.DrawImage(sourceBMP, 0, 0, width, height);
     //    return result;
     //}

     //public void resizeImage(string path, string originalFilename,int width, int height)
     //{


        


     //    System.Drawing.Image image = System.Drawing.Image.FromFile(path + originalFilename);

     //    System.Drawing.Image thumbnail = new Bitmap(width, height);
     //    System.Drawing.Graphics graphic =
     //                 System.Drawing.Graphics.FromImage(thumbnail);

     //    graphic.InterpolationMode = InterpolationMode.HighQualityBicubic;
     //    graphic.SmoothingMode = SmoothingMode.HighQuality;
     //    graphic.PixelOffsetMode = PixelOffsetMode.HighQuality;
     //    graphic.CompositingQuality = CompositingQuality.HighQuality;

     //    graphic.DrawImage(image, 0, 0, width, height);

     //    System.Drawing.Imaging.ImageCodecInfo[] info =
     //                     ImageCodecInfo.GetImageEncoders();
     //    EncoderParameters encoderParameters;
     //    encoderParameters = new EncoderParameters(1);
     //    encoderParameters.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality,100L);
     //    thumbnail.Save(path + originalFilename+"3", info[1],encoderParameters);
     //}
     //void Main()
     //{
     //    var sourceImagePath = "~/httpdocs/images/hi1.jpg";
     //    var destinationImagePath = "~/httpdocs/images/hi3.jpg";

     //    // Load image
     //    System.Drawing.Image sourceImage = System.Drawing.Image.FromFile(sourceImagePath);

     //    // Resize the image
     //    var resizedImage = ResizeImage(sourceImage, 200, 200);

     //    // Save resized image
     //    resizedImage.Save(destinationImagePath);
     //    resizedImage.Dispose();

     //    // Open the resized image to see the results
     //    Process.Start(destinationImagePath);
     //}

     //public static System.Drawing.Image ResizeImage(System.Drawing.Image sourceImage, int maxWidth, int maxHeight)
     //{
     //    // Determine which ratio is greater, the width or height, and use
     //    // this to calculate the new width and height. Effectually constrains
     //    // the proportions of the resized image to the proportions of the original.
     //    double xRatio = (double)sourceImage.Width / maxWidth;
     //    double yRatio = (double)sourceImage.Height / maxHeight;
     //    double ratioToResizeImage = Math.Max(xRatio, yRatio);
     //    int newWidth = (int)Math.Floor(sourceImage.Width / ratioToResizeImage);
     //    int newHeight = (int)Math.Floor(sourceImage.Height / ratioToResizeImage);

     //    // Create new image canvas -- use maxWidth and maxHeight in this function call if you wish
     //    // to set the exact dimensions of the output image.
     //    Bitmap newImage = new Bitmap(newWidth, newHeight, PixelFormat.Format32bppArgb);

     //    // Render the new image, using a graphic object
     //    using (Graphics newGraphic = Graphics.FromImage(newImage))
     //    {
     //        // Set the background color to be transparent (can change this to any color)
     //        newGraphic.Clear(Color.Transparent);

     //        // Set the method of scaling to use -- HighQualityBicubic is said to have the best quality
     //        newGraphic.InterpolationMode = InterpolationMode.HighQualityBicubic;

     //        // Apply the transformation onto the new graphic
     //        Rectangle sourceDimensions = new Rectangle(0, 0, sourceImage.Width, sourceImage.Height);
     //        Rectangle destinationDimensions = new Rectangle(0, 0, newWidth, newHeight);
     //        newGraphic.DrawImage(sourceImage, destinationDimensions, sourceDimensions, GraphicsUnit.Pixel);
     //    }

     //    // Image has been modified by all the references to it's related graphic above. Return changes.
     //    return newImage;
     //}


     //public object path { get; set; }
    //public static string uploadFile(string file)
    //{
    //    // Get the object used to communicate with the server.
    //    FtpWebRequest request = (FtpWebRequest)WebRequest.Create(Server.MapPath("~/images/" + file));
    //    request.Method = WebRequestMethods.Ftp.UploadFile;

    //    // This example assumes the FTP site uses anonymous logon.
    //    request.Credentials = new NetworkCredential("rcchurch", "UcyH0oo017");

    //    // Copy the entire contents of the file to the request stream.
    //    StreamReader sourceStream = new StreamReader(file);
    //    byte[] fileContents = Encoding.UTF8.GetBytes(sourceStream.ReadToEnd());
    //    sourceStream.Close();
    //    request.ContentLength = fileContents.Length;

    //    // Upload the file stream to the server.
    //    Stream requestStream = request.GetRequestStream();
    //    requestStream.Write(fileContents, 0, fileContents.Length);
    //    requestStream.Close();

    //    // Get the response from the FTP server.
    //    FtpWebResponse response = (FtpWebResponse)request.GetResponse();

    //    // Close the connection = Happy a FTP server.
    //    response.Close();

    //    // Return the status of the upload.
    //    return response.StatusDescription;
        
    //}
}