using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace boardWebPage.Board
{
    public partial class BoardList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string selectSql = "select num, name, title, writedate, readcnt, depth, refer, pos from RetblBrd order by refer DESC, pos";
                SqlDataSource1.SelectCommand = selectSql;
            }
        }
        public string SetSpace(int depth)
        {
            if (depth == 0) return "";
            string strSpace = "";
            for (int i = 0; i < depth; i++)
            {
                strSpace += "&nbsp;&nbsp;&nbsp;";
            }
            return strSpace;
        }
        protected void btnWrite_Click(object sender, EventArgs e)
        {
            Response.Redirect("BoardWrite.aspx");
        }
    }
}