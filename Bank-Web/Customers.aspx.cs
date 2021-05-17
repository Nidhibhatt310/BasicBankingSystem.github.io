using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Customers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindgrid();
    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select Cid,Cname,Cemail,(Cbalc+moneyrecv-moneysend) as Cbalc from Customer";
        DataSet ds = Class1.filldata(q);

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}