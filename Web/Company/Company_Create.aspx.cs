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

public partial class Company_Company_Create : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreate_Click(object sender, EventArgs e)
    {  
        //string CompanyName = null, Address1 = null, Address2 = null, City = null, State = null, PostCode = null, 
        //       Phone = null, Fax = null, Email = null, URL1 = null, URL2 = null, IATA = null, FMCNo = null, IssuePlace = null,
        //       TaxIDType = null, TaxIDNo = null, TSANo = null, TSAExpDate = null, AESContact = null, AESCity = null, 
        //       AESState = null, AESPostCode = null, AESCountry = null, AESEmail = null, AESPartyType = null;

       //  passing null value instead of empty string between function call, but passing parameter value to SQL server ...which to choose ?
       // if ( txtCompanyName.Text.Trim() != "") CompanyName = txtCompanyName.Text;
       string CompanyName = txtCompanyName.Text;
       string Address1 = txtAddress1.Text;
       string Address2 = txtAddress2.Text;
       string City = txtCity.Text;
       string State = txtState.Text;
       string PostCode = txtPostCode.Text;
       string Phone = txtPhone.Text;
       string Fax = txtFax.Text;
       string Email = txtEmail.Text;
       string URL1 = txtURL1.Text;
       string URL2 = txtURL2.Text;
       string IATA = txtIATA.Text;
       string FMCNo = txtFMCNo.Text;
       string IssuePlace = txtIssuePlace.Text;
       string TaxIDType = drpTaxIDType.SelectedItem.Text;
       string TaxIDNo = txtTaxIDNo.Text;
       string TSANo = txtTSANo.Text;
       string TSAExpDate = txtTSAExpDate.Text;
       string AESContact = txtAESContact.Text;
       string AESCity = txtAESCity.Text;
       string AESState = txtAESState.Text;
       string AESPostCode = txtAESPostCode.Text;
       string AESCountry = txtAESCountry.Text;
       string AESEmail = txtAESEmail.Text;
       string AESPartyType = drpAESPartyType.SelectedItem.Text;


       bool flag = false;

       flag = CompanyAccess.Company_Create(CompanyName, Address1, Address2, City, State, PostCode, Phone, Fax, Email, URL1, URL2, IATA, FMCNo, IssuePlace,
                                    TaxIDType, TaxIDNo, TSANo, TSAExpDate, AESContact, AESCity, AESState, AESPostCode, AESCountry, AESEmail, AESPartyType);
   
       lblStatus.Text = flag ? "ACCOUNT CREATED" : "ERROR ! FAILED TO CREATE ACCOUNT";
      //lblStatus.Text = Address1;
    }

}
