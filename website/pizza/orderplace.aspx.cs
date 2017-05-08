using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class pizza_orderplace : System.Web.UI.Page
{
    MyConnection con = new MyConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        //txtdeliveryaddress.Visible = false;
        //Label9.Visible = false;
        
        if (!IsPostBack)
        {
            txtdeliveryaddress.Visible = false;
            pizzasize();
        }
       
    }

    public void pizzasize()
    {

        DataSet ds = con.Select("sp_selectpizzasize");
        ddlpizzasize.DataSource= ds;
        ddlpizzasize.DataTextField = "pizzasize";
        ddlpizzasize.DataValueField = "id";
        ddlpizzasize.DataBind();
    }

    protected void ddlpizzasize_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlParameter[] p = new SqlParameter[1];
      
        p[0] = new SqlParameter("@id",ddlpizzasize.SelectedValue);
        DataSet ds = con.Select("sp_selectpizzapricebypizzasize", p);
        txtpizzaprice.Text = ds.Tables[0].Rows[0]["pizzaprice"].ToString();
  
    }
    protected void btnorderplace_Click(object sender, EventArgs e)
    {
        //SqlParameter[] p = new SqlParameter[9];
        //p[0] = new SqlParameter("@pizzasize", ddlpizzasize.SelectedItem.ToString());
        //p[1] = new SqlParameter("@pizzaprice", txtpizzaprice.Text);
        //p[2] = new SqlParameter("@numberofpizza", txtnumberofpizza.Text);
        //p[3] = new SqlParameter("@numberoftoppings", ddltoppings.SelectedValue);
        //p[4] = new SqlParameter("@timeofcompletion", ddltimecompletion.SelectedValue);
        //p[5] = new SqlParameter("@deliverytype", ddldeliverytype.SelectedValue);
        //p[6] = new SqlParameter("@address", txtdeliveryaddress.Text);
        //p[7] = new SqlParameter("@total", txttotalamount.Text);
        //p[8] = new SqlParameter("@orderdate", DateTime.Now.ToString());

        //con.Insert("sp_insertplaceorder", p);

        //Response.Redirect("~/pizza/DisplayOrder.aspx");

        Session["pizzaprice"] = txtpizzaprice.Text;
        Session["pizzasize"] = ddlpizzasize.SelectedItem;
        Session["numberofpizza"] = txtnumberofpizza.Text;
        Session["topping"] = ddltoppings.SelectedValue;
        Session["timecompletion"] = ddltimecompletion.SelectedValue;
        Session["deliverytype"] = ddldeliverytype.SelectedValue;
        Session["address"] = txtdeliveryaddress.Text;
        if (ddldeliverytype.Text == "delivery")
        {
            Session["totalamount"] = (Decimal.Parse(txtpizzaprice.Text) * Int32.Parse(txtnumberofpizza.Text) + 1).ToString();
        }
        else
        {
            Session["totalamount"] = (Decimal.Parse(txtpizzaprice.Text) * Int32.Parse(txtnumberofpizza.Text)).ToString();
        }

        Response.Redirect("~/pizza/conformdata.aspx");
       // Server.Transfer("~/pizza/conformdata.aspx");
    }
   






    protected void ddldeliverytype_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (ddldeliverytype.SelectedValue == "delivery")
        {
            Label9.Visible = true;
            txtdeliveryaddress.Visible = true;
        }
        else
        {
            Label9.Visible = false;
            txtdeliveryaddress.Visible = false;
        }
    }
}   