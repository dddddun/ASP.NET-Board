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
    public partial class BoardReply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnWrite_Click(object sender, EventArgs e)
        {

            /**  SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
             conn.Open();

             string selectSql = "select refer, pos, depth from RetblBrd where num=" + Request["No"];
             SqlCommand cmd = new SqlCommand(selectSql, conn);
             cmd.ExecuteNonQuery();
             SqlDataReader dr = cmd.ExecuteReader();
             if (dr.Read())
             {
                 lblrefer.Text = dr["refer"].ToString();
                 lbldepth.Text = dr["depth"].ToString();
                 lblpos.Text = dr["pos"].ToString();
             }
             dr.Close(); **/
            lblrefer.Text = Request["refer"];
            lblpos.Text = Request["pos"];
            lbldepth.Text = Request["depth"];
            lblnum.Text = Request["num"];

            int depth = int.Parse(lbldepth.Text);
            int pos = int.Parse(lblpos.Text);
            int refer = int.Parse(lblrefer.Text);


            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();

            // 선택한 게시글과 같은 글을 참조하는 글들의 순서를 정렬하기 위해 pos를 1 증가시킨다.
            string updateSql = "UPDATE RetblBrd SET pos=pos+1 WHERE ";
            updateSql += "refer=" + lblrefer.Text;
            updateSql += " AND pos > " + lblpos.Text;
            SqlCommand cmd = new SqlCommand(updateSql, conn);
            cmd.ExecuteNonQuery();

            /** string updateSql = "UPDATE RetblBrd SET pos = @pos + 1 WHERE refer = @refer AND pos > @pos";
            SqlCommand cmd = new SqlCommand(updateSql, conn);
            cmd.Parameters.AddWithValue("@pos", pos);
            cmd.Parameters.AddWithValue("@refer", refer);

            cmd.ExecuteNonQuery(); **/


            // Reply 글 저장
            string insertSql = "insert into RetblBrd (name, pass, email, title, contents, writedate, readcnt, refer, depth, pos)  values (@name, @pass, @email, @title, @contents, @writedate, @readcnt, @refer, @depth, @pos)";
            cmd = new SqlCommand(insertSql, conn);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@pass", txtpass.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@title", txttitle.Text);
            cmd.Parameters.AddWithValue("@contents", txtcontents.Text);
            cmd.Parameters.AddWithValue("@writedate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@readcnt", "0");
            cmd.Parameters.AddWithValue("@refer", refer);
            cmd.Parameters.AddWithValue("@depth", ++depth);
            cmd.Parameters.AddWithValue("@pos", ++pos);
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