<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalProjectLatest.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Contact page.</h3>
    <address>
        FAST NUCES<br />
        Lahore<br />
        <abbr title="Phone">P:</abbr>
        03000090909
    </address>

    <address>
        <strong>Faizan:</strong>   <a href="mailto:faizan@gmail.com">faizan@gmail.com</a><br />
        <strong>Asad:</strong> <a href="mailto:asad@gmail.com">asad@gmail.com</a>
    </address>
</asp:Content>
