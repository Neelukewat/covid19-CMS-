<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Covid19_management_system.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="css/StyleSheet2.css" rel="stylesheet" />

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
        <div class="container text-right position-relative">
            <asp:Label ID="Label1" runat="server" Text="Login" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

        </div>
    </section>
    <!-- End Hero -->
    <div class="container mt-4 p-4">
        <div class="row">
            <div class="col-md-6">
                <center>
                    <h2 class="align-content-center">Login</h2>
                </center>

                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username*"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="TextBox1" ErrorMessage="Please Enter Usernmae."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="form-control" placeholder="Password*" required></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TextBox2" ErrorMessage="Please Enter Passwords."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <select id="Select1" runat="server">
                            <option value="user">User</option>

                            <option value="admin" selected>Admin</option>
                            <option value="center">Center</option>

                        </select>
                    </div>
                </div>
                <br />

                <div class="form-group row justify-content-end">
                    <div class="col-sm-5">
                        <asp:Button class="btn btn-success btn-lg btn-danger" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

                    </div>
                </div>


                </>
            </div>

        </div>
    </div>



</asp:Content>
