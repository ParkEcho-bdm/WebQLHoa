﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="WebQLHoa.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">

        <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="false"
            DataKeyNames="masp" CssClass="table table-bordered" OnRowDeleting="gvGioHang_RowDeleting"
            OnRowUpdating="gvGioHang_RowUpdating">
            <Columns>
                <asp:ImageField ItemStyle-HorizontalAlign="Center" DataImageUrlField="hinh"
                    DataImageUrlFormatString="hinh_san_Pham/{0}"
                    HeaderText="Ảnh sản phẩm" ControlStyle-Width="150px">
                </asp:ImageField>
                <asp:BoundField HeaderText="Tên sản phẩm" DataField="tensp" />
                <asp:BoundField HeaderText="Đơn giá" DataField="DonGia"
                    DataFormatString="{0:#,##0}đ" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSoLuong" TextMode="Number" runat="server"
                            CssClass="form-control text-center" Width="150px" Text='<%# Eval("soluong")%>'>
                        </asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Thành tiền" DataField="Thanhtien" DataFormatString="{0:#,##0}đ" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="btUpdate" runat="server" CommandName="Update" CssClass="btn btn-secondary">
                          <i class="bi bi-pencil-square"></i> Cập Nhật
                        </asp:LinkButton>
                        <asp:LinkButton ID="btDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger">
                         <i class="bi bi-trash"></i> Xoá hoa</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <div class="alert alert-info">
                    Không có sản phẩm nào
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>

    <div class="mt-2">
        Tạm tính :
                <asp:Label ID="lbTongTien" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
