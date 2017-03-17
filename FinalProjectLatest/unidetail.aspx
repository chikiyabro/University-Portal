<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="unidetail.aspx.cs" Inherits="FinalProjectLatest.unidetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .myContainer{
            margin-top: 90px;
        }

        .uniImage{
            border-radius: 50px;
            float: left;
        }

        .uniPhoto{
            margin-top: 50px;
            width: 32px;
            height: 32px;
        }

        .secondRow{
            margin-left: 200px;
            margin-right: 0px;
            margin-bottom:60px;
        }

        .firstRow{
            margin-left: 200px;
            margin-right: 0px;
            margin-top:20px;
        }

        .similarUniImage{
            margin-left:200px;
            margin-top:20px;
        }

        .sixthArea{
            margin-top: 60px;
            height: 230px;
            color: white;
            width: 100%;
            background-color: #151515;
        }

        .uniImagee {
            border-radius: 50px;
            float: left;
            width: 128px;
            height:128px;
            margin: 20px;
        }

        .uniImageee {
            border-radius: 50px;
            float: left;
            width: 128px;
            height:128px;
            margin: 20px;
            margin-left: 20px;
        }


    </style>

    <div class="myContainer">

        <div class="container">
           
            <img class="uniImagee" src='<%=path1 %>' />
            <h3>
                <asp:Label ID="chikiya" runat="server" /></h3>
            <h5 style="color:grey;"><asp:Label ID="chikiya1" runat="server" /></h5>
            <h5 style="width:800px; line-height:20px;"><asp:Label ID="chikiya2" runat="server" /></h5>
            
            <hr />
            <div class="row firstRow">
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Ranking : <asp:Label ID="chikiya3" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Male:Female : <asp:Label ID="chikiya4" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Acceptance Rate : <asp:Label ID="chikiya5" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Ratings : <asp:Label ID="chikiya6" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Students : <asp:Label ID="chikiya7" runat="server" /></h6>
                    </div>
                    
                  </div>


                   <div class="row secondRow">
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Financial Aid : <asp:Label ID="chikiya8" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Societies : <asp:Label ID="chikiya9" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Faculty : <asp:Label ID="chikiya10" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Min SAT : <asp:Label ID="chikiya11" runat="server" /></h6>
                    </div>
                    <div class="col-sm-2">
                      <img class="uniPhoto" src="images/pic.png" />
                      <h6>Min NAT : <asp:Label ID="chikiya12" runat="server" /></h6>
                    </div>
                    
                  </div>
            <hr />

            <div class="description">
                <h3>Description</h3>
                <h5 style="line-height:20px"><asp:Label ID="chikiya21" runat="server" /></h5>
            </div>
            <hr />
            
            
                    <div class="programs">
                        <h3>Programs Offered</h3>
                        <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate> 
                        <div class="row">
                            <div class="col-sm-4">
                                <h5><%# DataBinder.Eval(Container.DataItem, "Name") %></h5>
                                <hr />
                            </div>
                            <div class="col-sm-4">
                                <h5><%# DataBinder.Eval(Container.DataItem, "Tuition") %></h5>
                                <hr />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <%--<div class="GPA">
                <h3>GPA Requirement</h3>
                <div class="row">
                    <div class="col-sm-4">
                        <h5>Computer Science</h5>
                        <hr />
                    </div>
                    <div class="col-sm-4">
                        <h5>Computer Science</h5>
                        <hr />
                    </div>--%>
                </div>
                </div>
                <hr />

                <div class="similarSchools">
                    <h2 style="text-align:center; font-weight:bolder">Similar Schools</h2>

                    <div class="row similarUniImage">
                    <div class="col-sm-4 ">
                         <a href='<%=path12%>' ><img class="uniImageee" src='<%=path2 %>' /></a>
                        
                       <%-- <h5>Computer Science</h5>--%>
                    </div>
                    <div class="col-sm-4">
                        <a href='<%=path13%>' ><img class="uniImageee"  src='<%=path3 %>' /></a>
                        
                        <%--<h5>Computer Science</h5>--%>
                    </div>

                    <div class="col-sm-4">
                       <a href='<%=path14%>' > <img class="uniImageee" src='<%=path4 %>' /></a>
                        
                            <%--<h5>Computer Science</h5>--%>
                    </div>
                </div>
                
                    <!--<div class="row similarUniImage">
                    <div class="col-sm-3 ">
                        <a href='<%=path15%>' ><img src='<%=path5 %>' /></a>
                        
                            <%--<h5>Computer Science</h5>--%>
                    </div>
                    <div class="col-sm-3">
                        <a href='<%=path16%>' ><img  src='<%=path6 %>' /></a>
                        
                          <%--<h5>Computer Science</h5>--%>
                    </div>

                    <div class="col-sm-3 ">
                        <img src='<%=path7 %>' />
                        
                        
                            <%--<h5>Computer Science</h5>--%>
                    </div>-->
                </div>

                </div>
                <hr />

            </div>            
            <!-- container ends here-->
        </div>

        <div class="sixthArea">
            <div class="container-fluid">
                
                <center><p style="padding-top:90px;"> Copyright @ uApply 2016</p><br />Designed by Faizan, Developed by Asad and Usman</center>
                

            </div>
            </div>
        <!-- mycontainer ends here-->
    </div>
    

</asp:Content>
