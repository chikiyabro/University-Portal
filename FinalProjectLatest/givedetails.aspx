<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="givedetails.aspx.cs" Inherits="FinalProjectLatest.givedetails" %>
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
                <h1 style="color:#333333; font-weight:bolder"><%=name %></h1>
                </center>
                <hr />

                <div class="form-group">
                  <label for="usr">CNIC:</label>
                    <asp:TextBox type="text" class="form-control" ID="cnic" runat="server"/>
                </div>

                <div class="form-group">
                  <label for="usr">Address:</label>
                  <asp:TextBox type="text" class="form-control" id="address" runat="server"/>
                </div>


                <div class="form-group">
                  <label for="usr">GPA:</label>
                  <asp:TextBox runat="server" type="text" class="form-control" id="gpa"/>
                </div>

                <div class="form-group">
                  <label for="usr">GRE/SAT Score:</label>
                  <asp:TextBox runat="server" type="text" class="form-control" id="score"/>
                </div>

                <div class="form-group">
                  <label for="usr">Matriculation Marks:</label>
                  <asp:TextBox runat="server" type="text" class="form-control" id="matric"/>
                </div>

                <div class="form-group">
                  <label for="usr">Current Institute:</label>
                  <asp:TextBox runat="server" type="text" class="form-control" id="current"/>
                </div>

                <div class="form-group">
                  <label for="usr">Department to Apply:</label>
                  <asp:TextBox runat="server" type="text" class="form-control" id="dept"/>
                </div>

                 <div class="form-group">
                  <label for="comment">Personal Statement:</label>
                  <textarea runat="server" class="form-control" rows="8" id="personal"></textarea>
                </div>

                <asp:Button class="btn btn-primary" name="login" runat="server" OnClick="fill" Text="Save Data"></asp:Button>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <button class="btn btn-primary" type="submit">  Skip It</button>

               
                <hr />

                



            </div>
            


            <!-- container ends here -->
        </div>

        <!-- my container ends here -->
    </div>

</asp:Content>
