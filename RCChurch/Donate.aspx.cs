using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Imaging;
using System.Drawing;
using System.Net;
using System.IO;

public partial class Donate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    




private void VaryQualityLevel()
{
// Get a bitmap.
    Bitmap bmp1 = new Bitmap(@"F:\Collections\picture\000393512.jpg");

//Or you do can use buil-in method
//ImageCodecInfo jgpEncoder GetEncoderInfo("image/gif");//"image/jpeg",...
ImageCodecInfo jgpEncoder = GetEncoder(ImageFormat.Jpeg);

// Create an Encoder object based on the GUID
// for the Quality parameter category.
System.Drawing.Imaging.Encoder myEncoder =System.Drawing.Imaging.Encoder.Quality;


// Create an EncoderParameters object.
// An EncoderParameters object has an array of EncoderParameter
// objects. In this case, there is only one
// EncoderParameter object in the array.
EncoderParameters myEncoderParameters = new EncoderParameters(1);

EncoderParameter myEncoderParameter = new EncoderParameter(myEncoder, 50L);
myEncoderParameters.Param[0] = myEncoderParameter;
bmp1.Save(@"f:\TestPhotoQualityFifty.jpg", jgpEncoder, myEncoderParameters);

myEncoderParameter = new EncoderParameter(myEncoder, 100L);
myEncoderParameters.Param[0] = myEncoderParameter;
bmp1.Save(@"f:\TestPhotoQualityHundred.jpg", jgpEncoder, myEncoderParameters);

// Save the bitmap as a JPG file with zero quality level compression.
myEncoderParameter = new EncoderParameter(myEncoder, 10L);
myEncoderParameters.Param[0] = myEncoderParameter;
bmp1.Save(@"f:\TestPhotoQualityZero.jpg", jgpEncoder, myEncoderParameters);

}



private ImageCodecInfo GetEncoder(ImageFormat format)
{

ImageCodecInfo[] codecs = ImageCodecInfo.GetImageDecoders();

foreach (ImageCodecInfo codec in codecs)
{
if (codec.FormatID == format.Guid)
{
return codec;
}
}
return null;
}
protected void imgsave_Click(object sender, EventArgs e)
{
    VaryQualityLevel();
}
}