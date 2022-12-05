<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CakeWebManagement.Register" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Your Account</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="margin: auto; text-align: center;">

                    <div class="login-form" style="margin: auto !important; text-align: center !important; display: inline-grid; align-items: center; justify-content: center; width: 100%; margin-top: 100px !important;">

                        <h2 class="text-center" style="margin-bottom: 10px;">Register</h2>
                        <div class="form-group">
                            <asp:TextBox ID="Fname" runat="server" Width="300px" Height="40px" CssClass="form-control" Placeholder="First Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Fname"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="Lname" runat="server" Width="300px" Height="40px" CssClass="form-control" Placeholder="Last Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Lname"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="Email" runat="server" Width="300px" Height="40px" CssClass="form-control" Placeholder="Email" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Email"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="Pass" runat="server" Width="300px" Height="40px" CssClass="form-control" TextMode="Password" Placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="Pass"></asp:RequiredFieldValidator>

                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="Repass" runat="server" Width="300px" Height="40px" CssClass="form-control" TextMode="Password" Placeholder="Confirm Pass"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="Repass"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Pass" ControlToValidate="Repass" ErrorMessage="Passwords do not match" ForeColor="#FF6600"></asp:CompareValidator>

                        </div>
                        <div class="form-group">
                            <asp:Button ID="sbmt" runat="server" CssClass="btn btn-primary btn-block" Width="300px" Height="40px" ForeColor="White" OnClick="Button1_Click" Text="CREATE ACCOUNT" />


                        </div>


                        <p class="text-center"><a href="Login.aspx">Login</a></p>
                    </div>

                </div>
            </div>
        </div>


        <%--<div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2"><b>Become a Customer</b></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">First Name:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Fname" runat="server" Width="282px" Height="29px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Fname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Last Name:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Lname" runat="server" Width="282px" Height="29px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Lname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Email:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Email" runat="server" Width="282px" Height="29px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="Email"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Password:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="Pass" runat="server" Width="282px" Height="29px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="Pass"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Re-Type Password:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="Repass" runat="server" Width="282px" Height="29px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="#FF3300" ControlToValidate="Repass"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Pass" ControlToValidate="Repass" ErrorMessage="Passwords do not match" ForeColor="#FF6600"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">
                        <asp:Button ID="sbmt" runat="server" BackColor="#993399" ForeColor="White" Height="47px" OnClick="Button1_Click" Text="CREATE ACCOUNT" Width="282px" />
                        <br />
                        <br />
                       <small>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Already Have an Account? login
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Here!</asp:HyperLink></small>
                    </td>
                </tr>
            </table>
        </div>--%>
    </form>
</body>
</html>
