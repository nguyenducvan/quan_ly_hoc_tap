<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TSBK.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../Style/LoginStyle.css" rel="stylesheet" />
    <link href="../Style/reset.css" rel="stylesheet" />
    <link href="../Style/Style.css" rel="stylesheet" />
</head>
 <body style="background-color:deepskyblue">
    <div >
        <img src="Images/back_ground_back_khoa.png" atl="Hệ thống tuyền sinh bách khoa xin chào bạn!" style="width:100%">
      
    </div>
   
    <form id="form1" runat="server">
        <div class="wrap">
		    <div class="avatar">
                <img src="http://phanmemdaotao.com/Media/Images/Information/Information000370/thu-vien-dien-tu.png">
		    </div>
		    <asp:TextBox runat="server" ID="m_txt_username" ClientIDMode="Static" placeholder="username"></asp:TextBox>
		    <div class="bar">
			    <i></i>
		    </div>
		    <asp:TextBox runat="server" ID="m_txt_password" ClientIDMode="Static" placeholder="password" TextMode="Password" style="color:maroon"></asp:TextBox>
		    <asp:Button runat="server" ClientIDMode="Static" ID="m_cmd_login" Text="Login" OnClick="m_cmd_Login_Click" />
           <div id="div_thong_tin_tai_khoan" >
               <div>
                   <asp:Label runat="server" ClientIDMode="Static" ID="m_lbl" />
               </div>
               
              <div style="margin-top:10px;">
                   <asp:Label runat="server" ClientIDMode="Static" ID="m_lbl_infor" />
              </div>
               
           </div>
            
	    </div>
      
    </form>
    <script src="../Scripts/index.js"></script>
</body>
</html>
