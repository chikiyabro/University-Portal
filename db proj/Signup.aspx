<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="GUI.WebForm2" %>

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

    .password{
        width: 400px;
        height: 40px;
        border: solid 1px grey;
        border-radius: 10px;
        padding-left: 10px;
    }

    #country{
        width: 415px;
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
        <asp:TextBox ID="password" class="password" placeholder="Password" type="password" name="password" runat="server"></asp:TextBox>
        <br /><br />
        <asp:TextBox ID="passwordAgain" class="password" placeholder="Type password again" type="password" name="passwordAgain" runat="server"></asp:TextBox>
        <br /><br />
        <asp:DropDownList ID="country" runat="server">
            <asp:ListItem>Pakistan</asp:ListItem>
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>USA</asp:ListItem>
            <asp:ListItem>UK</asp:ListItem>
            <asp:ListItem>Germany</asp:ListItem>
            <asp:ListItem>Austrailia</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="login" name="login" runat="server" OnClientClick="signUpValidator()" Text="Register"></asp:Button>
    </div></center>
    </form>
</body>



    <script>
        function signUpValidator() {

            var email = document.getElementById("<%=email.ClientID%>").value;
            var password1 = document.getElementById("<%=password.ClientID%>").value;
            var password2 = document.getElementById("<%=passwordAgain.ClientID%>").value;

            // for empty fields
            if (email == "" || password1 == ""
                || password2 == "") {
                alert("Please fill all fields");
                return false;
            }

            // validating email
            emailVal = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
            if (!email.match(emailVal)) {
                alert('Email Address not valid');
                return false;
            }

            // validating password
            if (password1.length < 8) {
                alert("Password must be at least 8 characters long");
                return false;
            }
            if (password1 != password2) {
                alert("Passwords don't match");
                return false;
            }
            return true;
        }
    </script>
</html>

