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
    public partial class CheckPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
            conn.Open();
            string selectSql = "select*from RetblBrd where num=" + Request["No"];
            SqlCommand cmd = new SqlCommand(selectSql, conn);
            // 한줄씩 읽기. password 비교하기 위함
            SqlDataReader dr = cmd.ExecuteReader();
            string strPass;
            dr.Read();
            strPass = dr["pass"].ToString();
            dr.Close();

            // 수정일 경우
            if (strPass.CompareTo(txtpass.Text) == 0 && Request["Action"].CompareTo("Modify") == 0)
            {
                Response.Redirect("BoardModify.aspx?No=" + Request["No"]);
            }

            // 삭제일 경우
            if (strPass.CompareTo(txtpass.Text) == 0 && Request["Action"].CompareTo("Delete") == 0)
            {
                string deleteSql = "delete from RetblBrd where num=" + Request["No"];
                SqlCommand delcmd = new SqlCommand(deleteSql, conn);

                delcmd.ExecuteNonQuery();
                Response.Redirect("BoardList.aspx");
            }
            conn.Close();
        }

        protected void btnList_Click(object sender, EventArgs e)
        {
            Response.Redirect("BoardList.aspx");
        }
    }
}