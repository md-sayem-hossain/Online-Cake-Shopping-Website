<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CakeWebManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title>Log in page</title>
    <style>

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12" style="margin: auto; text-align: center;">

                        <div class="login-form" style="margin: auto !important; text-align: center !important; display: inline-grid; align-items: center; justify-content: center; width: 100%; margin-top: 100px !important;">

                            <h2 class="text-center" style="margin-bottom: 10px;">Log in</h2>
                            <div class="form-group">
                                <asp:TextBox ID="email" CssClass="form-control" runat="server" Height="40px" placeholder="Email" Width="300px" TextMode="Email"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="pass" runat="server" CssClass="form-control" Height="40px" placeholder="Pass" Width="300px" TextMode="Password"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <asp:Button ID="logbtn" runat="server" Text="Login" CssClass="btn btn-primary btn-block" Width="300px" Height="40px" OnClick="logbtn_Click" />


                            </div>


                            <p class="text-center"><a href="Register.aspx">Create an Account</a></p>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
