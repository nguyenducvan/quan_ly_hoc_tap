<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="f100_nghiepvu_bo.aspx.cs" Inherits="WEB_DVMC.ht.f100_nghiepvu_bo" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="initial-scale=1.0, width=device-width" name="viewport">
    <title>Tables - Material</title>

    <!-- css -->
    <link href="../theme/css/base.min.css" rel="stylesheet" />
    <!-- css for this project -->
    <link href="../theme/css/project.min.css" rel="stylesheet" />
    <!-- favicon -->
    <!-- ... -->

    <!-- ie -->
    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    <style>
        #action {
            text-align: center;
        }

            #action input[type='button'] {
                height: 40px;
                width: 30%;
                border-radius: 10px;
                border: 0px;
                margin-top: 5px;
                color: white;
                font-size: 19px;
                font-weight: 400;
            }

            #action a {
                height: 40px;
                width: 30%;
                border-radius: 10px;
                border: 0px;
                margin-bottom:8px;
                color: white;
                font-size: 19px;
                font-weight: 400;
            } 

        #back {
            background-color: #f44336;
            top: 60px;
            position: absolute;
            left: 0px;
            height: 40px;
            width: 80px;
            border-radius: 10px;
            font-size: 25px;
            color: white;
            border: 0px;
        }

        .button-success {
            background-color: #449d44;
        }

        #row_detail span {
            color:maroon;
            font-weight:bold;
        }
    </style>
</head>
<body class="avoid-fout page-red">
    <div class="avoid-fout-indicator avoid-fout-indicator-fixed">
        <div class="progress-circular progress-circular-center">
            <div class="progress-circular-wrapper">
                <div class="progress-circular-inner">
                    <div class="progress-circular-left">
                        <div class="progress-circular-spinner"></div>
                    </div>
                    <div class="progress-circular-gap"></div>
                    <div class="progress-circular-right">
                        <div class="progress-circular-spinner"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <header class="header header-transparent header-waterfall">
        <ul class="nav nav-list pull-left">
            <li>
                <a data-toggle="menu" href="#menu">
                    <span class="icon icon-lg">menu</span>
                </a>
            </li>
        </ul>
        <a class="header-logo margin-left-no" >DVMCv3.0</a>
        <div class="header-affix pull-left" data-offset-top="108" data-spy="affix">
            <span class="header-text margin-left-no">
                <i class="icon margin-right">chevron_right</i>"DVMC3.0"
            </span>
        </div>
        <ul class="nav nav-list pull-right">
            <li>
                <a data-toggle="menu" href="#profile">
                    <span id="ten_nv" class="access-hide" runat="server"></span>
                    <span class="avatar">
                    <img alt="alt text for John Smith avatar" src="../theme/img/users/avatar-001.jpg" /></span>
                </a>
            </li>
        </ul>
    </header>
    <nav aria-hidden="true" class="menu" id="menu" tabindex="-1">
        <div class="menu-scroll">
            <div class="menu-content">
                <a class="menu-logo" href="index.html">DVMC3.0</a>
                <ul class="nav">
                    <li>
                        <a class="waves-attach" href="f100_nghiepvu_bo.aspx?mode=can_tiep_nhan">Đơn hàng cần tiếp nhận</a>
                    </li>
                    <li>
                        <a class="waves-attach" href="f100_nghiepvu_bo.aspx?mode=dang_xu_ly">Đơn hàng đang xử lý</a>
                    </li>
                    
                </ul>
                <%--<hr>
                <ul class="nav">                   
                    <li>
                        <a class="waves-attach" href="ui-form.html">Form Elements</a>
                        <span class="menu-collapse-toggle collapsed waves-attach" data-target="#form-elements" data-toggle="collapse"><i class="icon menu-collapse-toggle-close">close</i><i class="icon menu-collapse-toggle-default">add</i></span>
                        <ul class="menu-collapse collapse" id="form-elements">
                            <li>
                                <a class="waves-attach" href="f100_nghiepvu_bo.aspx?mode=can_tiep_nhan">Đơn hàng cần tiếp nhận</a>
                            </li>
                            <li>
                                <a class="waves-attach" href="f100_nghiepvu_bo.aspx?mode=dang_xu_ly">Đơn hàng đang xử lý</a>
                            </li>
                        </ul>
                    </li>          
                </ul>
                <hr> --%>            
            </div>
        </div>
    </nav>
    <nav aria-hidden="true" class="menu menu-right" id="profile" tabindex="-1">
        <div class="menu-scroll">
            <div class="menu-top">
                <div class="menu-top-img">
                    <img alt="John Smith" src="../theme/img/samples/landscape.jpg" />
                </div>
                <div class="menu-top-info">
                    <a id="user_name" class="menu-top-user" href="javascript:void(0)">
                        <span id="ten_nv_1" class="avatar pull-left" runat="server">
                            <img alt="alt text for John Smith avatar" src="../theme/img/users/avatar-001.jpg" />
                        </span>
                    </a>
                </div>
                <div class="menu-top-info-sub">
                    <small>Thông tin cá nhân</small>
                </div>
            </div>
            <div class="menu-content">
                <ul class="nav">             
                    <li>
                        <a class="waves-attach" id="log_out" href="f002_log_out.aspx" ><span class="icon icon-lg">exit_to_app</span>Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="content">
        <div class="content-heading">
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-10">
                    <section class="content-inner">
                        <h2 id="tieu_de_form" class="content-sub-heading">Đơn hàng cần tiếp nhận</h2>
                        <div class="table-responsive">
                            <table class="table" title="Đơn hàng cần tiếp nhận" id="m_grv_don_hang_can_tiep_nhan">
                                <thead>
                                    <tr>
                                        <th>User</th>
                                        <th>Yêu cầu</th>
                                        <th>Deadline</th>
                                    </tr>
                                </thead>
                                <tbody id="m_grv_body">
                                </tbody>
                            </table>
                        </div>

                    </section>
                </div>
            </div>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <p>Phòng DVMC - Tổ hợp giáo dục Topica</p>
        </div>
    </footer>
    <form runat="server" id="form1">
        <asp:HiddenField runat="server" ID="m_hdf_id_user" ClientIDMode="Static" />
        <asp:HiddenField runat="server" ID="m_hdf_id_don_hang" ClientIDMode="Static" />
        <asp:HiddenField runat="server" ID="m_hdf_user_name" ClientIDMode="Static" />
        <asp:HiddenField runat="server" ID="m_hdf_id_nhom" ClientIDMode="Static" />
        <asp:HiddenField runat="server" ID="m_hdf_id_log" ClientIDMode="Static" />

    </form>

    <div style="display: none; height: 100%; width: 100%; background-color: white; position: fixed; top: 0px;" id="row_detail">
        <input type="button" id="back" value="<" onclick="$('#row_detail').hide()">
        <div style="position:fixed; top:20%;font-size: 20px;line-height: 80px;padding-left: 5%;font-style: inherit;font-weight: 400;font-family: sans-serif;">
            Mã đơn hàng : <span id="ma_don_hang"></span><br/>
            Người đặt hàng : <span id="nguoi_dat_hang"></span><br/>
            Yêu cầu chi tiết : <span id="yeu_cau_chi_tiet"></span><br/>
            Deadline : <span id="deadline"></span>
        </div>
        <div style="position: fixed; bottom: 0px; height: 8%; width: 100%; background-color: white;" id="action">
            <input type="button" ID="m_btn_tiep_nhan" class="button-success" value="Tiếp nhận"/>
<%--        <input type="button" id="m_btn_tu_choi" class="button-success" value="Từ chối" onclick=""/>--%>
            <a class="btn waves-attach waves-button waves-effect button-success" id="m_a_tu_choi" data-toggle="modal" href="#modal">Từ chối</a>
            <input type="button" id="m_btn_chuyen_pm" class="button-success hidden" value="Chuyển PM"/>
            <a class="btn waves-attach waves-button waves-effect button-success" id="m_a_cap_nhat" data-toggle="modal" href="#modal">Cập nhật</a>
<%--            <input type="button" id="m_btn_cap_nhat" class="button-success" value="Cập nhật"/>--%>
            <input type="button" id="m_btn_da_xu_ly" class="button-success" value="Báo đã xử lý"/>

        </div>
    </div>		
    <div aria-hidden="true" class="modal fade" id="modal" role="dialog" tabindex="-1">
		<div class="modal-dialog modal-xs">
			<div class="modal-content">
				<div class="modal-heading">
					<a class="modal-close" data-dismiss="modal">×</a>
					<h2 id="modal_title" class="modal-title">Lí do từ chối</h2>
				</div>
				<div class="modal-inner">
					<div class="modal-inner">									
					    <div class="form-group form-group-label">
							<div class="row">
								<div class="col-md-10 col-md-push-1">
									<label id="modal_detail" class="floating-label" for="reason" >Lí do từ chối</label>
									<textarea class="form-control" id="reason" rows="5" ></textarea>                                                          
								</div>
							 </div>
					    </div>	
				    </div>
				</div>
				<div class="modal-footer">
					<p class="text-right"><button class="btn btn-flat btn-brand waves-attach waves-effect" data-dismiss="modal" type="button">Close</button><button class="btn btn-flat btn-brand waves-attach waves-effect" id="btn_tu_choi" data-dismiss="modal" type="button">OK</button></p>
				</div>
			</div>
		</div>
	</div>
    <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/webfont/1.5.18/webfont.js" type="text/javascript" async=""></script>
    <script src="../theme/js/base.min.js"></script>
    <!-- js for this project -->
    <script src="../theme/js/project.min.js"></script>
    <script>

        var a;

        function errorFunc() {
            alert('Đã có lỗi xảy ra. Vui lòng thử lại.');
        }

        function susscessFunc()
        {
            alert('Thành công.');
        }

        function load_data_2_grid_dang_xu_ly(ip_id_user) {
            $.ajax({
                type: "POST",
                url: location.origin + "/DVMCService.asmx/load_data_2_grid_dang_xu_ly",
                data: { id_user: ip_id_user },
                dataType: "text",
                success:  function (data) {
                    htmlString = "";
                    var v_re = JSON.parse(data);
                    a = v_re;
                    for (var i = 0; i < v_re.length; i++) {
                        htmlString += "<tr class='datarow' id='row_" + i + "'>";
                        htmlString += "<td>" + v_re[i].USER_NAME + "</td>";
                        htmlString += "<td>" + v_re[i].TEN_NHOM_DICH_VU_YEU_CAU + "</td>";
                        htmlString += "<td>" + getDate(json2date(v_re[i].THOI_DIEM_CAN_HOAN_THANH)) + "</td>";
                        htmlString += "</tr>";
                    }
                    $('#m_grv_body').append(htmlString);
                },                
                error: errorFunc
            });
        }

        function formatNumber(num) {
            if (num < 10) {
                return '0' + num;
            }
            else {
                return num;
            }
        }

        function getDate(time) {
            return formatNumber(time.getDate()) + '/' + formatNumber(time.getMonth() + 1) + '/' + time.getFullYear() + ' ' + time.getHours() + ':' + time.getMinutes() + ':' + time.getSeconds();
        }

        function json2date(DateJson) {
            var myDate = new Date(DateJson.match(/\d+/)[0] * 1);
            return myDate;
        }


        $(document).on('click', '#m_btn_tiep_nhan', function () {           
                $.ajax({
                    type: "POST",
                    url: location.origin + "/nghiep_vu_bo.asmx/bo_tiep_nhan",
                    data: { id_don_hang: $('#m_hdf_id_don_hang').val(), user_id: $('#m_hdf_id_user').val(), user_name: $('#m_hdf_user_name').val(), id_nhom: $('#m_hdf_id_nhom').val() },
                    dataType: "text",
                    success: susscessFunc,
                    error: errorFunc
                });
            }) 

        $(document).on('click', '#m_btn_chuyen_pm', function () {
            $.ajax({
                type: "POST",
                url: location.origin + "/nghiep_vu_bo.asmx/bo_chuyen_pm",
                data: { id_log: $('#m_hdf_id_log').val(), m_li_do: $('#reason').text(),user_id: $('#m_hdf_id_user').val()},
                dataType: "text",
                success: susscessFunc,
                error: errorFunc
            });
        })

            $(document).on('click', '#btn_tu_choi', function () 
            {
                if (getParameterByName('mode') == "can_tiep_nhan") 
                {
                    $.ajax({
                        type: "POST",
                        url: location.origin + "/nghiep_vu_bo.asmx/tu_choi_xu_ly",
                        data: { id_log: $('#m_hdf_id_log').val(), id_don_hang: $('#m_hdf_id_don_hang').val(), user_id: $('#m_hdf_id_user').val(), user_name: $('#m_hdf_user_name').val(), m_li_do: $('#reason').text()},
                        dataType: "text",
                        success: susscessFunc,
                        error: errorFunc
                    });
                }
                else
                {
                    $.ajax({
                        type: "POST",
                        url: location.origin + "/nghiep_vu_bo.asmx/cap_nhat_xu_ly",
                        data: { id_don_hang: $('#m_hdf_id_don_hang').val(), m_li_do: $('#reason').text(), user_id: $('#m_hdf_id_user').val() },
                        dataType: "text",
                        success: susscessFunc,
                        error: errorFunc
                    });
                }
             })
        

        $(document).on('click', '#m_btn_da_xu_ly', function () {
            $.ajax({
                type: "POST",
                url: location.origin + "/nghiep_vu_bo.asmx/bao_da_xu_ly",
                data: { id_log: $('#m_hdf_id_log').val(), id_don_hang: $('#m_hdf_id_don_hang').val(), user_id: $('#m_hdf_id_user').val(), user_name: $('#m_hdf_user_name').val() },
                dataType: "text",
                success: susscessFunc,
                error: errorFunc
            });
        })
        


        //$(document).on('click', '#btn_bao_da_xu', function () {
        //    $.ajax({
        //        type: "POST",
        //        url: location.origin + "/nghiep_vu_bo.asmx/tu_choi_xu_ly",
        //        data: { id_log: $('#m_hdf_id_log').val(), m_li_do: $('#reason').text() },
        //        dataType: "text",
        //        success: susscessFunc,
        //        error: errorFunc
        //    });
        //})

      
        function load_data_2_grid_dp_lai(ip_id_user) {
            $.ajax({
                type: "POST",
                url: location.origin + "/DVMCService.asmx/load_data_2_grid_dp_lai",
                data: { id_user: ip_id_user },
                dataType: "text",
                success: function (data) {
                    htmlString = "";
                    var v_re = JSON.parse(data);
                    a = v_re;
                    for (var i = 0; i < v_re.length; i++) {
                        htmlString += "<tr class='datarow' id='row_" + i + "'>";
                        htmlString += "<td>" + v_re[i].USER_NAME + "</td>";
                        htmlString += "<td>" + v_re[i].TEN_NHOM_DICH_VU_YEU_CAU + "</td>";
                        htmlString += "<td>" + getDate(json2date(v_re[i].THOI_DIEM_CAN_HOAN_THANH)) + "</td>";
                        htmlString += "</tr>";
                    }
                    $('#m_grv_body').append(htmlString);
                },
                error: errorFunc
            });
        }


        $(document).ready(function ()
        {
            if (getParameterByName('mode') == "can_tiep_nhan") {
                load_data_2_grid_dp_lai($('#m_hdf_id_user').val());
                $('#tieu_de_form').text("Đơn hàng cần tiếp nhận.");
                $('#m_btn_cap_nhat').addClass('hidden');
                $('#m_btn_da_xu_ly').addClass('hidden');

            }
            else {
                load_data_2_grid_dang_xu_ly($('#m_hdf_id_user').val());
                $('#tieu_de_form').text("Đơn hàng đang xử lí.");
                $('#m_btn_tiep_nhan').addClass('hidden');
                $('#m_a_tu_choi').addClass('hidden');
                $('#modal_title').text('Nội dung cập nhật'); 
                $('#modal_detail').text('Nội dung cập nhật');
            }
        })
        
        
        $(document).on('click', '.datarow', function () {
            var v_id = $(this).prop("id").split('_')[1];
            var data = a[v_id];
            $('#ma_don_hang').text(data.MA_DON_HANG);
            $('#nguoi_dat_hang').text(data.HO_TEN_USER_DAT_HANG);
            $('#yeu_cau_chi_tiet').text(data.NOI_DUNG_DAT_HANG);
            $('#deadline').text(getDate(json2date(data.THOI_DIEM_CAN_HOAN_THANH)));
            $('#m_hdf_id_don_hang').val(data.ID_DON_HANG);
            $('#m_hdf_id_log').val(data.ID);
            $('#row_detail').show();
            
        })

        function getParameterByName(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                results = regex.exec(location.search);
            return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
        }
    </script>
</body>
</html>
