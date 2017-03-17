<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="FinalProjectLatest.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="signupStyle.css"/>
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <br /><br />
           <a  href="home.aspx"><img class="logo" src="logo.png" /></a>
            <h1 class="heading"><b>SIGN UP</b></h1>
            <br />
            <asp:TextBox ID="first_name" class="password" placeholder="First Name" type="text" name="first_name" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="last_name" class="password" placeholder="Last Name" type="text" name="last_name" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="username" class="password" placeholder="Username" type="text" name="username" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="Email" placeholder="Email" name="email" type="text" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="Password" class="password" placeholder="Password" type="password" name="password" runat="server"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="Phone" class="password" placeholder="Phone Number" type="text" name="phonenumber" runat="server"></asp:TextBox>
            <br /><br />
   
            <asp:DropDownList ID="City" runat="server">
                <asp:ListItem>Lahore</asp:ListItem>
                <asp:ListItem>Islamabad</asp:ListItem>
                <asp:ListItem>Karachi</asp:ListItem>
                <asp:ListItem>Peshawar</asp:ListItem>
                <asp:ListItem>Quetta</asp:ListItem>
                <asp:ListItem>Faisalabad</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
             <span style="color:red"><asp:Label ID="message" runat="server"></asp:Label></span>
            <br />
            <br />
            <asp:Button ID="login" name="login" runat="server" OnClientClick="return signUpValidator()" OnClick="Signup" Text="Register"></asp:Button>
            <br /><br />
        </center>
    </div>
    </form>
    <script>
        function signUpValidator() {

            var email = document.getElementById("<%=Email.ClientID%>").value;
            var password1 = document.getElementById("<%=Password.ClientID%>").value;

            // for empty fields
            if (email == "" || password1 == "") {
                alert("Please fill all fields");
                this.form1.reset();
                return false;
            }

            // validating email
            emailVal = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
            if (!email.match(emailVal)) {
                alert('Email Address not valid');
                this.form1.reset();
                return false;
            }

            // validating password
            if (password1.length < 8) {
                alert("Password must be at least 8 characters long");
                this.form1.reset();
                return false;
            }
            return true;
        }
    </script>
    
</body>
</html>
