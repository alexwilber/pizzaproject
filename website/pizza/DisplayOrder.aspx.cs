using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class pizza_DisplayOrder : System.Web.UI.Page
{
    MyConnection con = new MyConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            OrderDisplay();
        }
    }

    public void OrderDisplay()
    {

        DataSet ds = con.Select("sp_selectplaceorderbyid");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pizza/orderplace.aspx");
    }
}