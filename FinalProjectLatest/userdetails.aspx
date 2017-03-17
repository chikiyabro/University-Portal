<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userdetails.aspx.cs" Inherits="FinalProjectLatest.userdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .myContainer{
            margin-top: 90px;
            align-content: center;
        }

        .userImage{
            width:128px;
            height:128px;
        }

        .headerInfo{
            align-content:center;
            align-items:center;
            align-self:center;
            margin-top: 30px;
        }

        .personalStatement{
            width: 1200px;
            padding-top: 50px;
            padding-bottom: 20px;
        }
    </style>

    <div class="myContainer">

        <div class="container">

            
            <div class="headerInfo">
                <center>
                <img class="userImage" src="images/user.png" />
                <h1 style="color:#333333; font-weight:bolder"> <%=name %></h1>
                </center>
                <hr />

                <div class="row">
                    <div class="col-lg-6">
                        <h5>Name: <%=name %></h5>
                        <hr />
                        <h5>Email: <%=email %></h5>
                        <hr />
                        <h5>CNIC: </h5>
                        <hr />
                        <h5>Address: <%=address %></h5>
                        <hr />
                        <h5>City: <%=city %></h5>
                        <hr />
                    </div>
                    <div class="col-lg-6">
                        <h5>GPA: <%=gpa %></h5>
                        <hr />
                        <h5>GRE/SAT Score: <%=gre %></h5>
                        <hr />
                        <h5>Matriculation Marks: <%=metric %></h5>
                        <hr />
                        <h5>Current Institute: <%=current %></h5>
                        <hr />
                        <h5>Department to Apply:  <%=department %></h5>
                        <hr />
                    </div>
                </div>
                <hr />

                <div class="personalStatement">
                    <h2><b>Personal Statement</b></h2>
                    <%=personal %>                </div>
                <hr />



            </div>
            


            <!-- container ends here -->
        </div>

        <!-- my container ends here -->
    </div>

</asp:Content>
