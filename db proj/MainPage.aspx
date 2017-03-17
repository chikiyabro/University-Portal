<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="MainPage.aspx.vb" Inherits="GUI2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .jumbotron{
        margin-top:100px;
        height:400px;
        background-image: url("bg.jpg");
    }

    .heading{
        color: white;
    }

    .h1{
        color: white;
    }

    .blackContainer{
        margin: 0px;
        height:150px;
        width: 100%;
        color: white;
        background-color: black;
    }

    .jumbotron{
        margin: 0px;
        margin-top:100px;
    }

    .thirdContainer{
        background-image: url("student.jpg");
    }
</style>
<div class="jumbotron">
    <div class="container jumbo">
        <h1 style="color:white;" class="heading"><b>Welcome to uApply</b></h1>
        <h4 style="color:white;">Click below to find schools that best suit you</h4>
        <br />
        <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg" runat="server" Text="Find Out" />
    </div>
</div> 

<div class="container blackContainer">
    <h2><center>How uApply works</center></h2>
</div>

<div class="container">
    <h2><center>Our Programs</center></h2>
</div>

<div class="jumbotron thirdContainer">
    <div class="container jumbo">
        <h1 style="color:white;" class="heading"><b><center>Why Choose Us?</center></b></h1>
        <h4 style="color:white;"><center>Click below to find out why</center></h4>
        <br />
        <center><asp:Button ID="Button2" CssClass="btn btn-primary btn-lg" runat="server" Text="Find" /></center>
    </div>
</div> 

<div class="container blackContainer">
    <h2><center>Footer</center></h2>
</div>
</asp:Content>
