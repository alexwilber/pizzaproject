using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class pizza_conformdata : System.Web.UI.Page
{
    MyConnection con = new MyConnection(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text=Session["pizzasize"].ToString();
        Label2.Text = Session["pizzaprice"].ToString();
        Label3.Text = Session["numberofpizza"].ToString();
        Label4.Text = Session["topping"].ToString();
        Label5.Text = Session["deliverytype"].ToString();
        if (Label5.Text == "delivery")
        {
            Label9.Visible = true;
            Label6.Text = Session["address"].ToString();
        }
        else
        {
            Label9.Visible = false;
            Label6.Visible = false;
        }
        Label7.Text = Session["timecompletion"].ToString();
        Label8.Text = Session["totalamount"].ToString();

    }
    protected void btnconformorder_Click(object sender, EventArgs e)
    {
        SqlParameter[] p = new SqlParameter[9];
        p[0] = new SqlParameter("@pizzasize", Label1.Text);
        p[1] = new SqlParameter("@pizzaprice",Label2.Text );
        p[2] = new SqlParameter("@numberofpizza",Label3.Text );
        p[3] = new SqlParameter("@numberoftoppings",Label4.Text);
        p[4] = new SqlParameter("@timeofcompletion",Label7.Text);
        p[5] = new SqlParameter("@deliverytype",Label5.Text);
        p[6] = new SqlParameter("@address",Label6.Text);
        p[7] = new SqlParameter("@total",Label8.Text);
        p[8] = new SqlParameter("@orderdate", DateTime.Now.ToString());

        con.Insert("sp_insertplaceorder", p);

        Response.Redirect("~/pizza/Default.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pizza/orderplace.aspx");
    }
}