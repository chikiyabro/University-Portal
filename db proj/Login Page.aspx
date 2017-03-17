<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login Page.aspx.vb" Inherits="GUI.WebForm1" %>

<!DOCTYPE html>

<style>

    html{
        font-family: 'Lato', sans-serif;
    }
    body{
        font-family: 'Lato', sans-serif;
    }

    .heading{
        padding-top: 50px;
        font-size: 350%;
        color: #265b80;
    }

    #email{
        width: 400px;
        height: 40px;
        border: solid 1px grey;
        border-radius: 10px;
        padding-left: 10px;
    }

    #password{
        width: 400px;
        height: 40px;
        border: solid 1px grey;
        border-radius: 10px;
        padding-left: 10px;
    }

    #login{
        font-family: 'Lato', sans-serif;
        border-radius: 10px;
        width: 200px;
        height: 50px;
        background-color:#265b80;
        color: white;
        font-size: 150%;
        border: solid 1px grey;
    }
    
    .logo{
        width:20%;
    }

</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
    <center><div>
        <br /><br />
        <img class="logo" src="logo.png" />
        <h1 class="heading"><b>SIGN UP</b></h1>
        <br />
        <asp:TextBox ID="email" placeholder="Email" name="email" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox class="password" placeholder="Password" type="password" name="password" runat="server"></asp:TextBox>
        <br /><br /><br />
        <asp:TextBox class="password2" placeholder="Type password again" type="password" name="passwordAgain" runat="server"></asp:TextBox>
        <br /><br /><br />
        <asp:Button ID="login" name="login" runat="server" Text="Login"></asp:Button>
    </div></center>
    </form>
</body>
</html>
