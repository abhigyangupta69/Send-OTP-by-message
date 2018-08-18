using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;


namespace MobileOTP
{
	public partial class MobileOTP : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void TextBox1_TextChanged(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			

		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			if (TextBox2.Text == Session["otp"].ToString())
			{
				Panel3.Visible = false;
				Label1.Text = "Your Mobile Number Has Been Verified Successfully - Thanks";
			}
			else
			{
				Label1.Text = "OTP Number is Not Correct : Your Mobile Number not Verified";
				Panel3.Visible = true;
			}


			}

		protected void Button1_Click1(object sender, EventArgs e)
		{
			Panel2.Visible = false;
			Panel3.Visible = true;
			Random random = new Random();
			int value = random.Next(1001, 9999);
			string destinationaddr = "91" + TextBox1.Text;
			string message = "Your OTP Number is " + value + " ( Sent By :MR.Abhigyan Gupta ji )";
			//Label3.Text = message;
			String message1 = HttpUtility.UrlEncode(message);

			using (var wb = new WebClient())
			{
				byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
				{
				{"apikey" , "2VKDDfoYoQQ-j7t31TUnr8atsSkpsyUW6uqmv7CZza"},
				{"numbers" , destinationaddr},
				{"message" , message1},
				{"sender" , "TXTLCL"}
				});
				string result = System.Text.Encoding.UTF8.GetString(response);
				Session["otp"] = value;


			}
		}
	}
}