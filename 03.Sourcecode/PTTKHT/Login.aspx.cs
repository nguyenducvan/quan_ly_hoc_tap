using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCF = System.Web.Configuration.WebConfigurationManager;
using System.Data.SqlClient;
using System.Data;

namespace PTTKHT
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public class clsLogIn
        {
            String strUserName = "";
            String strPassword = "";
            String strMessage = "";
            bool bolIsAdmin = false;
            bool bolIsLoged = false;

            public String UserName
            {
                set { strUserName = value; }
                get { return strUserName; }
            }

            public String Password
            {
                set { strPassword = value; }
                get { return strPassword; }
            }

            public String Message
            {
                set { strMessage = value; }
                get { return strMessage; }
            }

            public bool IsAdmin
            {
                //set { bolIsAdmin = value; }
                get { return bolIsAdmin; }
            }

            public bool IsLoged
            {
                //set { bolIsLoged=value;}
                get { return bolIsLoged; }
            }

            public clsLogIn(string username, string password)
            {
                strUserName = username;
                strPassword = password;
                LogIn();
            }

            private void LogIn()
            {
              // Method clsMT = new Method();

                String strCon = WCF.ConnectionStrings["CRMDatabase"].ConnectionString;
                SqlConnection myCon = new SqlConnection(strCon);
                myCon.Open();
                SqlCommand myCommand = new SqlCommand();
                myCommand.CommandText = "sp_LogInCRM";
                myCommand.Parameters.Add("@username", UserName);
                myCommand.CommandType = CommandType.StoredProcedure;
                myCommand.Connection = myCon;
                SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);
                DataTable myDataTable = new DataTable();
                myAdapter.Fill(myDataTable);

                if (myDataTable.Rows.Count == 0)
                {
                    bolIsLoged = false;
                    strMessage = "Tên đăng nhập không đúng!!!!";
                }
                else if (myDataTable.Rows[0][1].ToString() != strPassword)
                {
                    bolIsLoged = false;
                    strMessage = "Mật khẩu không đúng!!!!";
                }
                else 
                {
                    if (myDataTable.Rows[0][1].ToString()==strPassword)
                    {
                        bolIsLoged = true;
                        strMessage = "Đăng nhập thành công!";
                    }
                }
               
            }
        }

        protected void m_cmd_Login_Click(object sender, EventArgs e)
        {
            clsLogIn User_thi_sinh = new clsLogIn(m_txt_username.Text.Trim(), m_txt_password.Text.Trim());
            if (User_thi_sinh.IsLoged)
            {
                Session["sesLogin"] = User_thi_sinh.UserName;
                
                Response.Redirect("f000_thay_doi_nguyen_vong.aspx"); //Nếu đúng tên đăng nhập và mật khẩu thì gọi trang HomePage.aspx hiển thị
            }
            else
            {
                m_lbl.Text = User_thi_sinh.Message; //Thông báo lỗi ra màn hình
                m_lbl_infor.Text = "xin hãy kiểm tra lại thông tin đăng nhập!";
            }
        }

    }
}