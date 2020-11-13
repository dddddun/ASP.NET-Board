using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace boardWebPage.Board
{
    public partial class BoardModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
                conn.Open();

                string selectSql = "select*from RetblBrd where num=" + Request["No"];

                SqlCommand cmd = new SqlCommand(selectSql, conn);

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblname.Text = dr["name"].ToString();
                    txttitle.Text = dr["title"].ToString();
                    txtcontents.Text = dr["contents"].ToString();
                }
                dr.Close();
                conn.Close();
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            string updateSql = "update RetblBrd set title=@title, contents=@contents where num=" + Request["No"];
            SqlCommand cmd = new SqlCommand(updateSql, conn);

            cmd.Parameters.AddWithValue("@title", txttitle.Text);
            cmd.Parameters.AddWithValue("@contents", txtcontents.Text);

            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("BoardList.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("BoardList.aspx");
        }
    }
}