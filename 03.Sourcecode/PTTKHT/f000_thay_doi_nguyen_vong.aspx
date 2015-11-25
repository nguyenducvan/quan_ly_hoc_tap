<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="f000_thay_doi_nguyen_vong.aspx.cs" Inherits="PTTKHT.f000_thay_doi_nguyen_vong" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxImageSlider" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đào tao</title>
 <link href="Style/normalize.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="Style/finder.css" type="text/css">

<link rel="stylesheet" href="Style/template.css" type="text/css">
	
<link rel="stylesheet" href="Style/styles.css" type="text/css">
<link rel="stylesheet" href="Style/responsiveslides.css" type="text/css">

    <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="Style/styles1.css">
   
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>

    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>

    
    <!-- Insert to your webpage before the </head> -->
    <script src="sliderengine/jquery.js"></script>
    <script src="sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="sliderengine/amazingslider-0.css">
    <script src="sliderengine/initslider-0.js"></script>
    <style type="text/css">
        .auto-style2 {
            width: 211px;
        }
        table {
    border-collapse: collapse;
    background-color:aliceblue;
}

table, td, th {
    border: 1px solid black;
}

        .auto-style4 {
            width: 271px;
        }
        .auto-style5 {
            width: 121px;
        }

    </style>
</head>
<body style="background-color:deepskyblue">
    <form id="form1" runat="server">
    <div style="background-image:url('Images/back_ground_back_khoa.png'); height:159px; background-size:cover;margin-left:30px;margin-right:30px">
        
        <div style="float:right; text-color:red">
            <dx:ASPxLabel ID="m_lbl_thi_sinh" runat="server" Text="Xin chào bạn " ClientIDMode="Static" BackColor="White">
            </dx:ASPxLabel>
             <dx:ASPxLabel ID="m_lbl_ho_ten_ts" runat="server" Text="Nguyễn Đức Văn" ClientIDMode="Static" Theme="Office2003Blue" BorderBottom-BorderStyle="Solid" BackColor="#FFFF99">
            </dx:ASPxLabel>
            <br />
             <dx:ASPxLabel ID="ASPxLabel" runat="server" Text="đã đến với hệ thống tuyển sinh của Đại Học BKHN" ClientIDMode="Static" BackColor="White">
            </dx:ASPxLabel>
        </div>
    </div>
        <div id='cssmenu' style="margin-left:30px;margin-right:30px">
        <ul >
           <li class='active'><a href='#'><span>Trang chủ</span></a></li>
           <li><a href='#'><span>Giới thiệu</span></a></li>
           <li><a href='#'><span>Tin tức</span></a></li>
           <li class='last'><a href='#'><span>Tuyển sinh</span></a></li>
            <li class='last'><a href='#'><span>Đào tạo</span></a></li>
            <li class='last'><a href='#'><span>CT đặc biệt</span></a></li>
            <li class='last'><a href='#'><span>Trợ giúp</span></a></li>
           
        </ul>
        </div>
       
         <div>
             
             <div id="amazingslider-wrapper-0" style="display:block;position:relative;max-width:900px;margin:30px auto 40px;">
        <div id="amazingslider-0" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <li><img src="images/bachkhoahanoi1.png" alt="bachkhoahanoi1" />
                </li>
                <li><img src="images/c1bachkhoa.jpg" alt="c1bachkhoa" />
                </li>
                <li><img src="images/hust2.png" alt="hust2" />
                </li>
                <li><img src="images/hust3.png" alt="hust3" />
                </li>
                <li><img src="images/hust4.png" alt="hust4" />
                </li>
                <li><img src="images/IMG_4670.JPG" alt="IMG_4670" />
                </li>
                <li><img src="images/svbk.JPG" alt="svbk" />
                </li>
                <li><img src="images/thuvienbk.png" alt="thuvienbk" />
                </li>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <li><img src="Images/bachkhoahanoi1-tn.png" alt="bachkhoahanoi1" /></li>
                <li><img src="Images/c1bachkhoa-tn.jpg" alt="c1bachkhoa" /></li>
                <li><img src="Images/hust2-tn.png" alt="hust2" /></li>
                <li><img src="Images/hust3-tn.png" alt="hust3" /></li>
                <li><img src="Images/hust4-tn.png" alt="hust4" /></li>
                <li><img src="Images/IMG_4670-tn.JPG" alt="IMG_4670" /></li>
                <li><img src="Images/svbk-tn.JPG" alt="svbk" /></li>
                <li><img src="Images/thuvienbk-tn.png" alt="thuvienbk" /></li>
            </ul>
        
        </div>
    </div>
        </div>
         <div style="margin-left:30px">
                            <p>♦ Số báo danh: <asp:Label ID="m_lbl_so_bao_danh" runat="server" Text="" Font-Bold ="true"></asp:Label></p> 
                            <p>♦ Họ tên: <asp:Label ID="m_lbl_ho_ten" runat="server" Text="" Font-Bold ="true"></asp:Label></p> 
                            <p>♦ Ngày sinh: <asp:Label ID="m_lbl_ngay_sinh" runat="server" Text="" Font-Bold ="true"></asp:Label></p>
                            <p>♦ Khu vực: <asp:Label ID="m_lbl_khu_vuc" runat="server" Text="" Font-Bold ="true"></asp:Label></p>
                            <p>♦ Đối tượng: <asp:Label ID="m_lbl_doi_tuong" runat="server" Text="" Font-Bold ="true"></asp:Label></p>
                            <p>♦ Ưu tiên: <asp:Label ID="m_lbl_uu_tien" runat="server" Text="" Font-Bold ="true"></asp:Label></p>
                        </div>
        <!-- danh sách điểm thi của thí sinh-->
    <div style="float:none;margin-right:30px">      
        <h1><i style="color:white">Danh sách điểm thi của thí sinh:</i></h1>
        <table class="table_van" style="margin-left:30px;margin-right:30px;text-align:center">
            <tr>
                 <td  class="auto-style2">Anh</td>
                 <td  class="auto-style2">Địa</td>
                 <td  class="auto-style2">Tiếng Đức</td>                 
                 <td  class="auto-style2">Hóa</td>
                 <td class="auto-style2">Lý</td>
                <td class="auto-style2">Tiếng Nga</td>
                 <td  class="auto-style2">Tiếng Nhật</td>
                <td class="auto-style2">Tiếng Pháp</td>
                 <td class="auto-style2">Sinh</td>
                <td class="auto-style2">Sử</td>
                 <td class="auto-style2">Toán</td>
                 <td class="auto-style2">Tiếng Trung</td>
                 <td class="auto-style2">Văn</td>

            </tr>
             <tr>
                 <td  class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_tieng_anh" runat="server" Text="0" ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_dia" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_tieng_duc" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_hoa" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_ly" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_tieng_nga" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_tieng_nhat" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_tieng_phap" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_sinh" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_su" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_toan" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_tieng_trung" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
                 <td class="auto-style2">
                     <dx:ASPxLabel ID="m_lbl_van" runat="server" Text=" " ClientIDMode="Static">
                     </dx:ASPxLabel>
                 </td>
            </tr>
        </table>
    </div>

        
        <div style="height:50px"></div>  
        
           <!-- danh sách nguyện vọng của thí sinh-->
        <div style="margin-right:30px"> 
            <h1> <i style="color:white">Danh sách nguyện vọng của thí sinh:</i></h1>
           
           
            <table style="text-align:center;margin-left:30px;margin-right:30px;margin-bottom:30px" class="table_van" >
                <tr style="text-align:center">
                    <td class="auto-style2" colspan="2">Nguyện vọng 1:</td>
                     <td class="auto-style2" colspan="2">Nguyện vọng 2:</td> 
                    <td class="auto-style2" colspan="2">Nguyện vọng 3:</td>
                     <td class="auto-style2" colspan="2">Nguyện vọng 4:</td>
                </tr>
                   <tr >
                    <td class="auto-style2" >Nhóm ngành:</td>
                    <td class="auto-style2"> 
                        <dx:ASPxComboBox ID="m_cbo_nhom_nganh_NV1" runat="server" ValueType="System.String" ClientIDMode="Static">
                        </dx:ASPxComboBox>
                       </td> 
                      <td class="auto-style2">Nhóm ngành:</td>
                     <td class="auto-style2">
                         <dx:ASPxComboBox ID="m_cbo_nhom_nganh_NV2" runat="server" ValueType="System.String" ClientIDMode="Static">
                         </dx:ASPxComboBox>
                       </td>
                     <td class="auto-style2">Nhóm ngành:</td>
                     <td class="auto-style2">
                         <dx:ASPxComboBox ID="m_cbo_nhom_nganh_NV3" runat="server" ValueType="System.String" ClientIDMode="Static">
                         </dx:ASPxComboBox>
                       </td>
                     <td class="auto-style2">Nhóm ngành:</td>
                     <td class="auto-style2">
                         <dx:ASPxComboBox ID="m_cbo_nhom_nganh_NV4" runat="server" ValueType="System.String" ClientIDMode="Static">
                         </dx:ASPxComboBox>
                       </td>
                </tr>
                   <tr >
                    <td class="auto-style2"> Tổ hợp môn:</td>
                    <td class="auto-style2">
                        <dx:ASPxComboBox ID="m_cbo_to_hop_mon_NV1" runat="server" ValueType="System.String" ClientIDMode="Static">
                        </dx:ASPxComboBox>
                       </td> 
                      <td class="auto-style2">Tổ hợp môn:</td>
                     <td class="auto-style2">
                         <dx:ASPxComboBox ID="m_cbo_to_hop_mon_NV2" runat="server" ValueType="System.String" ClientIDMode="Static">
                         </dx:ASPxComboBox>
                       </td>
                     <td class="auto-style2">Tổ hợp môn:</td>
                     <td class="auto-style2">
                         <dx:ASPxComboBox ID="m_cbo_to_hop_mon_NV3" runat="server" ValueType="System.String" ClientIDMode="Static">
                         </dx:ASPxComboBox>
                       </td>
                     <td class="auto-style2">Tổ hợp môn:</td>
                     <td class="auto-style2">
                         <dx:ASPxComboBox ID="m_cbo_to_hop_mon_NV4" runat="server" ValueType="System.String" ClientIDMode="Static">
                         </dx:ASPxComboBox>
                       </td>
                </tr>
                <tr style="background-color:deepskyblue;border:hidden">
                    <td colspan="8" style="border:hidden"> <br /></td>
                </tr>
                <tr style="background-color:deepskyblue;border:hidden">
                    <td colspan="3"></td>
                    <td colspan="2" style="border:hidden" >
                        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Lưu thay đổi"></dx:ASPxButton>
                        </td>
                    <td colspan="3"></td>
                </tr>
                 
            </table>
           
        </div>

         <!-- button lưu thay đổi-->
           

       <!-- Thông tin liên lạc với nhà trường--> 
	<div id="bottomwide" style="background-color:#FF3300;margin-top:30px;margin-left:30px;margin-right:30px" >
		<div id="bottom" class="clearfix">
			<div class="user1">		<div class="moduletable">
					

<div class="custom">
	<p><strong>Phòng Đào tạo Đại học</strong></p>
<p>Đ/c: Tầng 2-C1, ĐHBK Hà Nội</p></div>
		</div>
	</div>
			<div class="user2">		<div class="moduletable">
					

<div class="custom">
	<p>Email:&nbsp;<strong>dtdh@hust.edu.vn</strong></p>
<p>Website:&nbsp;<strong>http://dtdh.hust.edu.vn/</strong></p></div>
		</div>
	</div>
			<div class="user3">		<div class="moduletable">
					

<div class="custom">
	<p>C1-201: Xử lý học tập |<strong>&nbsp;</strong><strong>04.3868.2305</strong></p>
<p>C1-202: TS, đào tạo |&nbsp;<strong>04.3869.2008</strong></p>
<p>Fax: 043.8683618</p></div>
		</div>
	</div>
		</div>
				<div class="tgwide"><div id="tg">
					<div class="footer-left">
					Trang thông tin Đào tạo Đại học - Trường Đại học Bách Khoa Hà Nội					</div>
				</div></div>	
					
	</div>
	<!--/.relative -->
	<!--/.fluid-container -->
    </form>
</body>
</html>
