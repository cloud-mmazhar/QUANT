using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Account_Account_Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {
        int AccountTypeID = Int32.Parse(drpAccountType.SelectedValue);
        string CompanyName = txtCompanyName.Text;
        string URL1 = txtURL1.Text;
        string URL2 = txtURL2.Text;
        bool CreditHold = true;     // change to value from dropdown
        bool Active  =  true;

        int AddressTypeID = Int32.Parse(drpAddressType.SelectedValue);
        string Address1 = txtAddress1.Text;
        string Address2 = txtAddress2.Text;
        string City     = txtCity.Text;
        string State    = txtPostCode.Text;
        string PostCode = txtPostCode.Text;

        int ContactTypeID = Int32.Parse(drpContactType.SelectedValue);
        string Phone = txtPhone.Text;
        string Fax   = txtFax.Text;
        string Email = txtEmail.Text;
        string ContactName = txtContactName.Text;

        bool flag = false;

        flag = AccountAccess.Account_Create( AccountTypeID, CompanyName, URL1, URL2, CreditHold, Active,
                                             AddressTypeID, Address1, Address2, City, State, PostCode,
                                             ContactTypeID, Phone, Fax, Email, ContactName);
        

        lblStatus.Text = flag ? "COMPANY CREATED" : "ERROR ! FAILED TO CREATE COMPANY";
    }
}
