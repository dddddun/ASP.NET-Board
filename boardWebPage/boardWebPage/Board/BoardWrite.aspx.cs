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
    public partial class BoardWrite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            // 원글 처리 부분
            string insertSql = "insert into RetblBrd(name, pass, email, title, contents, writedate, readcnt, refer, depth, pos)  values (@name, @pass, @email, @title, @contents, @writedate, @readcnt, @refer, @depth, @pos)";
            SqlCommand cmd = new SqlCommand(insertSql, conn);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@pass", txtpass.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@title", txttitle.Text);
            cmd.Parameters.AddWithValue("@contents", txtcontents.Text);
            cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@readcnt", "0");
            cmd.Parameters.AddWithValue("@refer", "0");
            cmd.Parameters.AddWithValue("@depth", "0");
            cmd.Parameters.AddWithValue("@pos", "0");
            cmd.ExecuteNonQuery();

            string updateSql = "update RetblBrd set refer = num where refer = 0";
            cmd = new SqlCommand(updateSql, conn);
            cmd.ExecuteNonQuery();

            conn.Close();
            Response.Redirect("BoardList.aspx");
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("BoardList.aspx");
        }
    }
}