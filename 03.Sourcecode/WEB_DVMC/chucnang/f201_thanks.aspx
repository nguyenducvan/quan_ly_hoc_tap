<%@ Page Title="" Language="C#" MasterPageFile="~/Home2.master"  CodeBehind="f201_thanks.aspx.cs" Inherits="WEB_DVMC.chucnang.f201_thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../Styles/style.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="div-confirm-phan-hoi">
        Cảm ơn thầy / cô đã đánh giá cho đơn hàng <asp:Label runat="server" ID="m_lbl_don_hang"></asp:Label>. 
        <br /> Chúc thầy / cô một ngày làm việc thật hiệu quả!
        <br /> -- DVMC --
        <br />
        <br />
        <br />
        <div style="text-align:left">
        </div>
    </div>
</asp:Content>
