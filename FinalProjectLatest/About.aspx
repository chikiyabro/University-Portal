<%@ Page Title="About" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="FinalProjectLatest.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--<h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>-->
    <style>
    .myContainer{
            margin-top: 90px;
            align-content: center;
        }

    .logo{
        width: 30%;
    }

    .uniPhoto{
        width:256px;
        height: 256px;
        border-radius: 50%;
        margin-left: 40px;
        margin-top:40px;
    }

    .rowContent{
        margin-left: 40px;
    }
    </style>


    <div class="myContainer">

        <div class="container">

            <center>
                <img class="logo" src="images/logo.png" />
                <hr />
                <h1 style="font-weight:bolder;padding-top: 30px;"> About Us</h1>
                <hr />
            </center>

            <p><b>UAPPLY</b> is a university admission and information portal developed for the ease of students. The website aims to collect as many information about universities as it can. The students who want to apply to a certain university but do not know the procedure or the details of the university don't have to worry now. We have made the job a lot easier for them now. All you have to do is open the website, store your credentials and surf as many universities as you want. You will be presented with all the details of a university. You can then just go to the admission form and copy all the information that you have stored in our website. Therefore, it's also like a personal diary for you where you have kept all your info that can be asked while filling an admission form.</p>
            <hr />

            <center> <h1 style="font-weight:bolder;padding-top: 30px;"> Our Team </h1></center>
            <div class="row">
                    <div class="col-lg-4">
                      <img class="uniPhoto" src="images/asad.jpg" />
                      <h2 style="padding-left:70px;">Asad Mahmood</h2>
                      <h5 style="padding-left:110px;">Database Designer</h5>
                    </div>

                    <div class="col-lg-4">
                      <img class="uniPhoto" src="images/faizan.jpg" />
                      <h2 style="padding-left:80px;">Faizan Ahmad</h2>
                      <h5 style="padding-left:120px;">Graphics Designer</h5>
                    </div>

                    <div class="col-lg-4">
                      <img class="uniPhoto" src="images/usman.jpg" />
                      <h2 style="padding-left:100px;">Usman Nazir</h2>
                      <h5 style="padding-left:130px;">Database Designer</h5>
                    </div>
            </div>
            <hr />

            <!-- container ends here -->
        </div>

        <!-- my container ends here -->
    </div>
</asp:Content>
