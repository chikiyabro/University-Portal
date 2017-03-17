<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FinalProjectLatest.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="loginStyle.css"/>
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <br /><br />
            <a  href="home.aspx"><img class="logo" src="logo.png" /></a>
            <h1 class="heading"><b>LOGIN</b></h1>
            <asp:TextBox ID="email" placeholder="Username" name="Username" runat="server"></asp:TextBox>   
            
            <br />
            <br />
            <asp:TextBox ID="password" class="password" placeholder="Password" type="password" name="password" runat="server"></asp:TextBox>
            
            <br />
            <br />
            <span style="color:red"><asp:Label ID="message" runat="server"></asp:Label></span>
            <br />
            <br />
            <asp:Button ID="submitLogin" name="login" runat="server" OnClick="Login" Text="Login"></asp:Button>
        </center>
    </div>
    </form>
</body>
</html>
