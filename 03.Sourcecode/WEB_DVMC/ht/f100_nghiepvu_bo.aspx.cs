using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB_DVMC.ht
{
    public partial class f100_nghiepvu_bo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               
                    ten_nv.InnerText = Session["user_strTEN_TRUY_CAP"].ToString();
                    ten_nv_1.InnerText = Session["user_strTEN_TRUY_CAP"].ToString();
                    m_hdf_id_user.Value = Session["user_dcID"].ToString();
                    m_hdf_user_name.Value = Session["user_strTEN_TRUY_CAP"].ToString();
                    m_hdf_id_nhom.Value = Session["user_dcIDNhom"].ToString();
                
            }
            catch (Exception ex)
            {
            }
        }

        protected void user_log_out(object sender, EventArgs e)
        {
            try
            {
                Session.Clear();
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("f000_login.aspx");
            }

            catch (Exception ex)
            {

            }
        }
    }
}