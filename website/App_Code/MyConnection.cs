using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for MyConnection
/// </summary>
public class MyConnection
{
    SqlConnection con = new SqlConnection(@"Data Source=DEVARSHI-PC;Initial Catalog=pizza;Integrated Security=True");

	public MyConnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public void Insert(string spname,SqlParameter []p)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand(spname,con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddRange(p);

        cmd.ExecuteNonQuery();

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }

    public void Update(string spname,SqlParameter []p)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand(spname, con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddRange(p);

        cmd.ExecuteNonQuery();

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }

    public void Delete(string spname)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand(spname,con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.ExecuteNonQuery();

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }

    public void Delete(string spname,SqlParameter []p)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }

        SqlCommand cmd = new SqlCommand(spname, con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddRange(p);

        cmd.ExecuteNonQuery();

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }

    public DataSet Select(string spname)
    {
        SqlCommand cmd = new SqlCommand(spname,con);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        ad.Fill(ds);

        return ds;
    }

    public DataSet Select(string spname,SqlParameter []p)
    {
        SqlCommand cmd = new SqlCommand(spname, con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddRange(p);

        SqlDataAdapter ad = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        ad.Fill(ds);

        return ds;
    }
}