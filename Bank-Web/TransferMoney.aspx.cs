using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TransferMoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
                string id = Request.QueryString["k"];
                HiddenField1.Value = id.ToString();

                Class1.connection();

                binddrop();
        }
    }
    public void binddrop()
    {
            Class1.connection();

            string q = "select * from Customer";

            DataSet ds = Class1.filldata(q);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Cname";
            DropDownList1.DataValueField = "Cid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--selected--");
        
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
       
            Class1.connection();
            string drop1 = DropDownList1.SelectedValue.ToString();
            string q = "update Customer set moneyrecv='"+TextBox1.Text+"' ,Cbalc=(Cbalc+moneyrecv) where Cid='"+drop1+"'";
             string q1 = "update Customer set moneysend='"+TextBox1.Text+"', Cbalc=(Cbalc-moneysend) where Cid='"+HiddenField1.Value+"'";
        Class1.execute(q1);
            if (Class1.execute(q))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Money Transfered');window.location ='../Customers.aspx';", true);

            }
        }

    }
