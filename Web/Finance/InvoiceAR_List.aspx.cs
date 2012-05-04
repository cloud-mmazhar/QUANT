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

public partial class Finance_InvoiceAR_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }

    }

    protected void BindData()
    {
        int IMP_EXP = Int32.Parse( Request.QueryString["IE"] );
        int MA_HO   = Int32.Parse( Request.QueryString["MH"] );
        int Air_Ocean = Int32.Parse( Request.QueryString["AO"]);

        lvInvoiceAR.DataSource = FinanceAccess.GetInvoiceAR(IMP_EXP, MA_HO, Air_Ocean);
        lvInvoiceAR.DataBind();
    }

    protected void lvInvoiceAR_PreRender(object sender, EventArgs e)
    {
        //BindListView();
        BindData();
    }

    protected void CurrentPageChanged(object sender, EventArgs e)
    {
        TextBox txtCurrentPage = sender as TextBox;

        DataPager pager = this.lvInvoiceAR.FindControl("pager") as DataPager;
        int startRowIndex = (int.Parse(txtCurrentPage.Text) - 1) * pager.MaximumRows;
        pager.SetPageProperties(startRowIndex, pager.MaximumRows, true);
    }

    protected void PagerCommand(object sender, DataPagerCommandEventArgs e)
    {
        // DataPager pager = e.Item.Pager;
        // int newStartRowIndex;
        switch (e.CommandName)
        {
            //case "Next":
            //    newStartRowIndex = pager.StartRowIndex + pager.MaximumRows > pager.TotalRowCount ? pager.StartRowIndex : pager.StartRowIndex + pager.MaximumRows;
            //    break;
            //case "Previous":
            //    newStartRowIndex = pager.StartRowIndex - pager.MaximumRows < 0 ? pager.StartRowIndex : pager.StartRowIndex - pager.MaximumRows;
            //    break;
            //case "Last":
            //    newStartRowIndex = (pager.TotalRowCount / pager.MaximumRows) * pager.MaximumRows;
            //    break;
            //case "First":
            //default:
            //    newStartRowIndex = 0;
            //    break;

            case "Next":
                //  guard against going off the end of the list
                e.NewStartRowIndex = Math.Min(e.Item.Pager.StartRowIndex + e.Item.Pager.MaximumRows, e.Item.Pager.TotalRowCount - e.Item.Pager.MaximumRows);
                e.NewMaximumRows = e.Item.Pager.MaximumRows;
                break;
            case "Previous":
                //  guard against going off the begining of the list
                e.NewStartRowIndex = Math.Max(0, e.Item.Pager.StartRowIndex - e.Item.Pager.MaximumRows);
                e.NewMaximumRows = e.Item.Pager.MaximumRows;
                break;
            case "Last":
                //  the
                e.NewStartRowIndex = e.Item.Pager.TotalRowCount - e.Item.Pager.MaximumRows;
                e.NewMaximumRows = e.Item.Pager.MaximumRows;
                break;
            case "First":
            default:
                e.NewStartRowIndex = 0;
                e.NewMaximumRows = e.Item.Pager.MaximumRows;
                break;
        }

        //  e.NewMaximumRows = e.Item.Pager.MaximumRows;
        // e.NewStartRowIndex = newStartRowIndex;
    }



    protected string myFormat1(object strArg)
    {
        int val = Convert.ToInt32(strArg);
        if (val == 0)
            return "IMPORT";
        else
            return "EXPORT";
    }
    
    protected string myFormat2(object strArg)
    {
        int val = Convert.ToInt32(strArg);
        if (val == 0)
            return "MASTER";
        else
            return "HOUSE";
    }

    protected string myFormat3(object strArg)
    {
        int val = Convert.ToInt32(strArg);
        if (val == 0)
            return "AIR";
        else
            return "OCEAN";
    }

    protected string myFormat4(object strArg)
    {
        if (strArg != null)
        {
            int val = Convert.ToInt32(strArg);
            if (val == 0)
                return "Closed";
            else
                return "Open";
        }

        return "Open";
    }

}
