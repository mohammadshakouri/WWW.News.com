<%@ Page Title="hello" Language="C#" MasterPageFile="~/Pages/MainMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="News.App.Pages.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script>

        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>پیامی از صفحه پیش فرض</h3>
    <table id="example" class="display" style="width: 80%;">
        <thead>
            <tr>
                <th>ردیف</th>
                <th>عنوان خبر</th>
                <th>خلاصه خبر</th>
                <th>ویرایش</th>
            </tr>
        </thead>
        <tbody id="tbody" runat="server">
        </tbody>

    </table>

</asp:Content>
