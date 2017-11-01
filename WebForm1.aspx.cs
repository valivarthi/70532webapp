using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.MobileServices;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static MobileServiceClient MobileService =
         new MobileServiceClient(
             "https://mobileappname.azurewebsites.net"
         );

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        IMobileServiceTable<personinfo> personinfoTableObj = MobileService.GetTable<personinfo>();

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                personinfo pObj = new personinfo();
                pObj.firstname = txtFirstName.Text;
                pObj.lastname = txtLastName.Text;
                pObj.city = txtCity.Text;

                personinfoTableObj.InsertAsync(pObj);
                lblInsert.Text = "Data Inserted Successfully";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtCity.Text = "";
                
            }
            catch (Exception ex1)
            {

                lblInsert.Text = "Error";
            }
        }
    }
}