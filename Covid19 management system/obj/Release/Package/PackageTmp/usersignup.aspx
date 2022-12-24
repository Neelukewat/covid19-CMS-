<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Covid19_management_system.usersignup" %>

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
            <asp:Label ID="Label1" runat="server" Text="Register Here" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

        </div>
    </section>
    <!-- End Hero -->
    <div class="container mt-4 p-4">
        <div class="row">
            <div class="col-md-6">
                <center>
                    <h2 class="text-center my-mx-xxl-align-content-center">Register Here-Become Member</h2>
                </center>
                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox Class="form-control" ID="TextBox1" runat="server" placeholder="Your Name*"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="TextBox1" ErrorMessage="Please Enter Name."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <br />
                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox Class="form-control" ID="TextBox2" runat="server" placeholder="Age*" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TextBox2" ErrorMessage="Please Enter Age."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox Class="form-control" ID="TextBox3" runat="server" placeholder="Username*"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="TextBox3" ErrorMessage="Please Enter Usernmae."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />

                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox Class="form-control" ID="TextBox4" runat="server" placeholder="Password*" TextMode="Password" reqired></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="TextBox4" ErrorMessage="Please Enter Password."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />

                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox Class="form-control" ID="TextBox5" runat="server" placeholder="Your Email*" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter your Email ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <br />

                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="Your Phone*" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ControlToValidate="TextBox6" ErrorMessage="Please Enter Phone No."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />

                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:TextBox Class="form-control" ID="TextBox7" runat="server" placeholder="Your Aadhar Number*" TextMode="Number" reqired></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                            ControlToValidate="TextBox7" ErrorMessage="Please Enter Aadhar Number."
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />

                <div class="form-group row">
                    <div class="col-sm-8 col-lg-8">
                        <asp:FileUpload ID="FileUpload1" runat="server" />

                        <asp:Label ID="Label3" runat="server"></asp:Label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                    ControlToValidate="FileUpload1" ErrorMessage="Please Upload Aadhar Image."
                                    ForeColor="#CC0000"></asp:RequiredFieldValidator>
                        <br />


                    </div>
                </div>
                <br />

                <div class="form-group row justify-content-end">
                    <div class="col-sm-5">
                        <br />
                        <asp:Button class="btn btn-success btn-lg btn-danger" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click1" />

                    </div>
                </div>
                <br />
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br />

            </div>
        </div>

    </div>



</asp:Content>
