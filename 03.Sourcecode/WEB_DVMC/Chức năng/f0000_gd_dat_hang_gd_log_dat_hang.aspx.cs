using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IPCOREDS;
using IPCOREUS;
using IP.Core.IPCommon;
using System.Data;


namespace WEB_DVMC.Chức_năng
{
    public partial class f0000_gd_dat_hang_gd_log_dat_hang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            load_data_2_grid();
        }

        private void load_data_2_grid()
        {

            US_DUNG_CHUNG v_us = new US_DUNG_CHUNG();
            DataSet v_ds = new DataSet();
            v_ds.Tables.Add(new DataTable());
            v_us.FillDatasetWithQuery(v_ds, "select * from v_gd_dat_hang_gd_log_dat_hang");
            //m_grv_gd_dat_hang_gd_log_dat_hang.DataSource = v_ds.Tables[0];
        }

       
    }
}