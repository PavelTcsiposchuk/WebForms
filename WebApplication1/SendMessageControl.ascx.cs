using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SendMessageControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string reg = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
         @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
         @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            bool IsValidEmail = Regex.IsMatch(EmailTextBox.Text, reg);

            if(IsValidEmail)
            {
                Response.Redirect("SuccessSend.aspx");
            }
            else
            {
                EmailError.Enabled = true;
                EmailError.Text = Resources.Resource.Wrong_input_email;
                EmailError.Visible = true;
            }
        }

        protected void MessageTextBox_TextChanged(object sender, EventArgs e)
        {
            
            
        }

        protected void EmailTextBox_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}