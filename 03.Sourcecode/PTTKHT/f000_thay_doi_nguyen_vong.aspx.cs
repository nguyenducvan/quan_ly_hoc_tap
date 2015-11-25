using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTTKHT
{
    public partial class f000_thay_doi_nguyen_vong : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            m_lbl_ho_ten_ts.Text = Session["sesLogin"].ToString();
        }

       
        
    }
}