<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FinalProjectLatest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .myContainer{
            margin-top: 60px;
        }

        .myHeader{
            font-size: 12px;
            align-content: center;
        }

        .myActive{
            font-weight: bold;
        }

        .line{
            font-weight: lighter;
        }

        .a{
            color: black;
            text-emphasis-color: black;
           
        }

        .uniImage{
            margin-top: 30px;
            border-radius: 50%;
            float: left;
        }

        .uniHeading{
            padding-bottom: 20px;
            margin-left: 50px;
            padding-left: 50px;
            padding-top: 5px;
            font-weight: lighter;
        }

        .uniPhoto{
            width: 32px;
            height: 32px;
        }

         .uniPhotoo{
            width: 124px;
            height: 124px;
            border-radius: 50%;
            margin-right: 20px;
        }

        .readMore{
            margin-left:800px;
            width: 90px;
            
            margin-bottom: 50px;
            margin:0;
        }

        .btn-primary{
            margin-left: 1000px;
            width: 90px;
            font-size: 12px;
            height: 25px;
            padding: 0;
            background-color: grey;
            
        }

        .sixthArea{
            margin-top: 60px;
            height: 230px;
            color: white;
            width: 100%;
            background-color: #151515;
        }

       
    </style>

    <div class="myContainer">
        <div class="container">
            <hr>
            <center>
            <div class="myHeader">
                <b>SORT BY&nbsp;&nbsp;&nbsp;&nbsp;</b> 
                <asp:button runat="server" onclick="ranking_sorting" class="myActive" Text="Ranking"></asp:button>&nbsp;&nbsp;
                <span class="line">|</span>&nbsp;&nbsp;
                <asp:button  runat="server" onclick="tuition_sorting" class="myActive" Text="TuitionFee"></asp:button>&nbsp;&nbsp;
                <span class="line">|</span>&nbsp;&nbsp;
                <asp:button runat="server" onclick="acc_sorting" class="myActive" Text="Acceptance Rate"></asp:button>&nbsp;&nbsp;
            </div>
            </center>
            <hr>

            <!-- UNIVERSITY DETAILS -->        
                        
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate> 
                    <tr>
                        <td>
                            <div class="universityDetailsContainer">
                                <div class="uniImage">
                                    <img class="uniPhotoo" src='<%#"images/" + DataBinder.Eval(Container.DataItem, "Name") + " Big.jpg"%>' />
                                </div>
                            </div>
                            <div class="uniHeading">
                                <h3> <asp:Label ID="Label1" class="uniPhotoo" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>'></asp:Label> </h3>
                                <h5 style="color:grey;"> <asp:Label ID="Label2"  runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Address") %>'></asp:Label></h5>
                                <h6><%# DataBinder.Eval(Container.DataItem, "desc") %></h6>
                                  <div class="row">
                                    <div class="col-sm-2">
                                      <img class="uniPhoto" src="images/pic.png" />
                                      <h6>Ranking :<%# DataBinder.Eval(Container.DataItem, "Ranking") %></h6>
                                    </div>
                                    <div class="col-sm-2">
                                      <img class="uniPhoto" src="images/pic.png" />
                                      <h6>Rating :<%# DataBinder.Eval(Container.DataItem, "Rating") %></h6>
                                    </div>
                                    <div class="col-sm-2">
                                      <img class="uniPhoto" src="images/pic.png" />
                                      <h6>Acceptance :<%# DataBinder.Eval(Container.DataItem, "Acceptance") %></h6>
                                    </div>
                                    <div class="col-sm-2">
                                      <img class="uniPhoto" src="images/pic.png" />
                                      <h6>Tuition :<%# DataBinder.Eval(Container.DataItem, "Tuition") %></h6>
                                    </div>
                                    <div class="col-sm-2">
                                      <img class="uniPhoto" src="images/pic.png" />
                                      <h6>Student :<%# DataBinder.Eval(Container.DataItem, "Student") %></h6>
                                    </div>
                                    <div class="col-sm-2">
                                      <img class="uniPhoto" src="images/pic.png" />
                                      <h6>Aid :<%# DataBinder.Eval(Container.DataItem, "Aid") %></h6>
                                    </div>
                                  </div>
                            </div>
                             <asp:Button ID="Button1" PostBackUrl='<%#string.Concat("~/unidetail.aspx?Name=", DataBinder.Eval(Container.DataItem, "Name")) %>' CssClass="readMore btn btn-primary" runat="server" Text="Read More" />
                            
                            <hr />
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
       
           <!-- UNIVERSITY DETAILS ENDS -->
        <!-- container class ends here -->
        </div>

        
        <!-- my container class ends here -->
    </div>

            <div class="sixthArea">
            <div class="container-fluid">
                
                <center><p style="padding-top:90px;"> Copyright @ uApply 2016</p><br />Designed by Faizan, Developed by Asad and Usman</center>
                

            </div>
            </div>

   



</asp:Content>
