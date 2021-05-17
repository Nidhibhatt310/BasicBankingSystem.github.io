using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ViewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();

            Class1.connection();

            string q = "select * from Customer where Cid=" + id.ToString();
            DataSet ds = Class1.filldata(q);

            DetailsView1.EmptyDataText = "Data Not Fetched";
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
          
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customers.aspx");
    }
    
}