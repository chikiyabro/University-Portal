<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="FinalProjectLatest.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .myContainer{
            margin-top: 60px;
        }

        .img{
            height: 100%;
            width: 100%;
        }

        .heroArea{
            height: 400px;
            width: 100%;
            background-image: url("hero.jpg");
        }

        .heading{
            padding-top: 40px;
            font-weight: bolder;
            font-size: 80px;
            color: white;
            text-align: center;
        }

        .headingBottom{
            
            font-weight: bold;
            font-size: 20px;
            color: white;
            text-align: center;
        }

        .input-lg{
            margin-top: 40px;
        }

        .submitCity{
            width: 200px;
            height: 40px;
            margin-top: 30px;
            align-content: center;
        }

        .secondArea{
            height: 140px;
            color: white;
            width: 100%;
            background-color: #151515;
        }

        .icons{
            width:32px;
            height:32px;
            margin-bottom: 5px;
        }

       .thirdArea{
           height: 400px;
           background-color: white;
           width:100%;
       }

       .topuniversityy{
           margin-top:20px;

           height:170px;
           width: 350px;
           margin-bottom:20px;
       }

       .topuniversity{
           margin-top:20px;

           width: 256px;
           height: 256px;
           border-radius: 50%;
           margin-bottom:20px;
       }

       .fourthArea{
            margin-top: 60px;
            height: 400px;
            width: 100%;
            background-image: url("images/secondbg.jpg");
        }

       .findoutwhy{
           width: 300px;
           height: 60px;
       }

       .sixthArea{
            margin-top: 60px;
            height: 230px;
            color: white;
            width: 100%;
            background-color: #151515;
        }

       .fifthArea{
           height: 400px;
           background-color: white;
           width:100%;
           margin-bottom: 40px;
       }

        .topuniversityn {
            margin-top:20px;

           width: 256px;
           height: 256px;
           border-radius: 50%;
           margin-bottom:20px;
        }
       
    </style>


    <div class="myContainer">
        <div class="heroArea">
            <div class="container">
                <h1 class="heading" style="color:blue;">FIND THE BEST SCHOOL</h1>
                <h4 class="headingBottom">Type your city below to find Schools that best suit you</h4>
                <asp:TextBox ID="typeCity" CssClass="input-lg form-control" runat="server"></asp:TextBox>
                <asp:Button ID="submitCity" OnClick="SendCity" type="submit" CssClass="btn btn-default submitCity center-block" runat="server" Text="Submit" />
               
            </div>
        </div>

        <div class="secondArea">
            <div class="container-fluid">
                <h3 class="headingBottom" style="padding-bottom:10px;">How UApply Works</h3>
                
                <center>
                <div class="row">
                <div class="col-sm-4">
                  <img class="icons" src="images/school.png" style="margin-left:10px" />
                  <p>Find Schools and Programs</p>
                </div>
                <div class="col-sm-4">
                  <img class="icons" src="images/school.png" style="margin-left:10px"/>
                  <p>Submit One Application</p>
                </div>
                <div class="col-sm-4">
                  <img class="icons" src="images/school.png" style="margin-left:10px"/>
                  <p>Enroll in School</p>
                </div>
              </div>
                </center>
            </div>
        </div>

        <div class="fifthArea">
            <div class="container">
                <h2 class="headingTwo" style="text-align:center; font-weight:bolder; color: black; padding-top:20px; padding-bottom:15px;">Select Universities by Program</h2>

                <!-- PROGRAMS-->
                <div class="row">
                    <div class="col-sm-4">
                      <a href="WebForm1.aspx?Program=Engineering&City=1"><img class="topuniversityy" src="images/eng.png" style="margin-left:10px" /></a>
                    </div>
                    <div class="col-sm-4">
                      <a href="WebForm1.aspx?Program=Medicine&City=1"><img class="topuniversityy" src="images/med.png" style="margin-left:10px" /></a>
                    </div>
                    <div class="col-sm-4">
                        <a href="WebForm1.aspx?Program=Science&City=1"><img class="topuniversityy" src="images/science.png" style="margin-left:10px" /></a>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-4">
                      <a href="WebForm1.aspx?Program=Law&City=1"><img class="topuniversityy" src="images/law.png" style="margin-left:10px" /></a>
                    </div>
                    <div class="col-sm-4">
                      <a href="WebForm1.aspx?Program=Business&City=1"><img class="topuniversityy" src="images/business.png" style="margin-left:10px" /></a>
                    </div>
                    <div class="col-sm-4">
                      <a href="WebForm1.aspx?Program=SocialSciences&City=1"><img class="topuniversityy" src="images/sc.png" style="margin-left:10px" /></a>
                    </div>
                </div>
                <!-- PROGRAMS FINISHED-->


            </div>



        
            <div class="fourthArea">
            <div class="container">
                <h1 class="heading">Why Choose UApply?</h1>
                <h4 class="headingBottom">We'll help you get to your dream school.</h4>
                <a href="About.aspx"><asp:Button ID="findout" type="button"  CssClass="btn btn-default center-block findoutwhy" runat="server" Text="Find out Why" style="margin-top:50px;"/></a>
               
            </div>
            </div>

            <div class="thirdArea">
            <div class="container">
                <h2 class="headingTwo" style="text-align:center; font-weight:bolder; color: black; padding-top:20px"><%=sharab%></h2>

                <!-- TOP UNIVERSITIES-->
                <div class="row">
                <div class="col-sm-4">
                  <a href='<%=path11%>' ><img id="asad" class="topuniversity" src='<%=path1%>' style="margin-left:10px" /></a>
                    
                </div>
                <div class="col-sm-4">
                  <a href='<%=path12%>'><img class="topuniversity" src='<%=path2%>' style="margin-left:10px" /></a>
                    
                </div>
                <div class="col-sm-4">
                  <a href='<%=path13%>'><img class="topuniversity" src='<%=path3%>' style="margin-left:10px" /></a>
                    
                </div>
              </div>

                <div class="row">
                <div class="col-sm-4">
                  <a href='<%=path14%>'><img class="topuniversity" src='<%=path4%>' style="margin-left:10px" /></a>
                    
                </div>
                <div class="col-sm-4">
                  <a href='<%=path15%>'><img class="topuniversityn" src='<%=path5%>' style="margin-left:10px" /></a>
                    
                </div>
                <div class="col-sm-4">
                  <a href='<%=path16%>'><img class="topuniversityn" src='<%=path6%>' style="margin-left:10px" /></a>
                    
                </div>
              </div>
                <!-- TOP UNIVERSITIES FINISHED-->


            </div>




            <div class="sixthArea">
            <div class="container-fluid">

                <center><p style="padding-top:90px;"> Copyright @ uApply 2016</p><br />Designed by Faizan, Developed by Asad and Usman</center>
                
            </div>
            </div>


        </div>



    </div>

  
</asp:Content>
