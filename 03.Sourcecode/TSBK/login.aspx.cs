using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSBK
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string m_user;
        string m_pass;
        protected void m_cmd_Login_Click(object sender, EventArgs e)
        {
            m_user = m_txt_username.Text;
            m_pass = m_txt_password.Text;
            US_DUNG_CHUNG v_us = new US_DUNG_CHUNG();
            DataSet v_ds = new DataSet();
            v_ds.Tables.Add(new DataTable());
            v_us.FillDatasetLogin(v_ds,m_user,m_pass);
            if (v_ds.Tables[0].Rows.Count==0)
            {
                m_lbl.Text = "Thông tin đăng nhập không chính xác!";
                m_lbl_infor.Text = "Vui lòng kiểm tra lại Tài khoản và Mật khẩu!";
            }
        }
    }
}