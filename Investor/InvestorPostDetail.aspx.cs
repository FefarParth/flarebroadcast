﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Investor_InvestorPostDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();
        /*      SqlCommand cmd = new SqlCommand("INSERT INTO SignUp (F_name,L_name,Email_id,Password,Contact_number,User_type,User_status) VALUES('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + "Active" + "')", con);
              con.Open();
              cmd.ExecuteNonQuery();
              con.Close();
      */
        int InvestorPostId = Convert.ToInt32(Request.QueryString["InvestorPostId"]);
        string str = "select * from InvestorPost WHERE (Investor_post_id) = ('" + InvestorPostId + "')";
        SqlCommand cmd = new SqlCommand(str, con);

        // SqlCommand cmd1 = new SqlCommand("select Country_title from Country where Country_id =@country AND (Idea_post_id) = ('" + IdeaPostId + "')", con);


        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();

        //   string Cid = reader["Country_id"].ToString();
        //  cmd.Parameters.AddWithValue("@country", Cid);

        Label1.Text = reader["Intrest"].ToString();
        // reader.Read();
        Label2.Text = reader["Min_grub"].ToString();
        // reader.Read();
        Label3.Text = reader["Max_grub"].ToString();
        // Reader.Read();

        Session["Country"] = reader["Country_id"].ToString();
        Label4.Text = GetCountryName();

        // Reader.Read();

        Session["State"] = reader["State_id"].ToString();
        Label5.Text = GetStateName();

        // Reader.Read();

        Session["City"] = reader["City_id"].ToString();
        Label6.Text = GetCityName();

        // Reader.Read();

        Session["Category"] = reader["Category_id"].ToString();
        Label7.Text = GetCategoryName();

        // Reader.Read();

        //Session["Sub Category"] = reader["Sub_Category_id"].ToString();
        //Label8.Text = GetCategoryName2();

        // Reader.Read();
        Label9.Text = reader["Professional_background"].ToString();
     
        reader.Close();
        con.Close();


    }



    public string GetCountryName()
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();

        string str = "select * from Country WHERE (Country_id) = ('" + Session["Country"] + "')";
        SqlCommand cmd = new SqlCommand(str, con);

        // SqlCommand cmd1 = new SqlCommand("select Country_title from Country where Country_id =@country AND (Idea_post_id) = ('" + IdeaPostId + "')", con);


        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        string CountryName = reader["Country_title"].ToString();
        reader.Close();
        con.Close();

        return CountryName;


    }

    public String GetStateName()
    {
        String cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();

        String str = "select * from State WHERE State_id = ('" + Session["State"] + "')";
        SqlCommand cmd = new SqlCommand(str, con);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        string StateName = reader["State_title"].ToString();
        reader.Close();
        con.Close();

        return StateName;
    }

    public String GetCityName()
    {
        String cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();

        String str = "select * from City WHERE City_id = ('" + Session["City"] + "')";
        SqlCommand cmd = new SqlCommand(str, con);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        string CityName = reader["City_title"].ToString();
        reader.Close();
        con.Close();

        return CityName;
    }

    public String GetCategoryName()
    {
        String cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

        SqlConnection con = new SqlConnection(cs);
        con.Open();

        String str = "select * from Category WHERE Category_id = ('" + Session["Category"] + "')";
        SqlCommand cmd = new SqlCommand(str, con);

        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        string CategoryName = reader["Category_title"].ToString();
        reader.Close();
        con.Close();

        return CategoryName;
    }

    //public String GetCategoryName2()
    //{
    //    String cs = System.Configuration.ConfigurationManager.ConnectionStrings["Flare BroadcastConnectionString"].ConnectionString;

    //    SqlConnection con = new SqlConnection(cs);
    //    con.Open();

    //    String str = "select * from SubCategory WHERE Sub_category_id = ('" + Session["Sub Category"] + "')";
    //    SqlCommand cmd = new SqlCommand(str, con);

    //    SqlDataReader reader = cmd.ExecuteReader();
    //    reader.Read();
    //    string CategoryName2 = reader["Sub_category_title"].ToString();
    //    reader.Close();
    //    con.Close();

    //    return CategoryName2;
    //}


   
}