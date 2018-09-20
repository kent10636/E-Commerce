using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBUtility;
using System.Data.SqlClient;
using System.Data;
using BLL;
using DAL;

public partial class admin_User_ManageUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void BindUser()
    {
        gvmanagerUser.DataKeyNames = new string[] { "userID" };
        DataSet set = new userInfo().GetBindUser("p_SelectUser");
        if (set.Tables[0].Rows.Count > 0)
        {
            gvmanagerUser.DataSource = set.Tables[0];
            gvmanagerUser.DataBind();
        }
        else
        {
            gvmanagerUser.DataBind();
        }
    }

    protected void gvmanagerUser_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
}
