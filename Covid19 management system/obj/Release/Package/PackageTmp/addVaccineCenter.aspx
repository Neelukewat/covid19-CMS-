<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="addVaccineCenter.aspx.cs" Inherits="Covid19_management_system.addVaccineCenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="css/StyleSheet2.css" rel="stylesheet" />
    </head>
    <body>
        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container text-right position-relative">
                <asp:Label ID="Label1" runat="server" Text="Add Center" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

            </div>
        </section>
        <!-- End Hero -->
        <div class="container mt-4 p-4">
            <div class="row">
                <div class="col-md-6">
                    <center>
                        <h2 class="text-center my-mx-xxl-auto">Add Center</h2>
                        <form>
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="Select State" Value="select" />
                                            <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                            <asp:ListItem Text="Punjab" Value="Punjab" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                                            ErrorMessage="Please Enter State Name"
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="Select City" Value="select" />
                                            <asp:ListItem Text="Mumbai" Value="Mumbai" />
                                            <asp:ListItem Text="Pune" Value="Pune" />
                                        </asp:DropDownList>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2"
                                            ErrorMessage="Please Enter City Name"
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <br />

                            <!---->
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name of Center*"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1"
                                            ErrorMessage="Please Enter Name of Center"
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                            </div>
                            <br />

                            <!---->
                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" class="form-control" placeholder="Address*" required></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2"
                                            ErrorMessage="Please Enter Address."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />

                            <!---->
                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" class="form-control" placeholder="Contact*"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter your Contact No" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />

                            <!---->
                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" class="form-control" placeholder="Email*"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter your Email ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <br />

                            <!---->
                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" class="form-control" placeholder="Password*" required></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5"
                                            ErrorMessage="Please Enter Password."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                            </div>
                            <br />
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                            <asp:ListItem Text="Choose Center Type*" Value="select" />
                                            <asp:ListItem Text="Goverment" Value="goverment" />
                                            <asp:ListItem Text="Private" Value="private" />
                                        </asp:DropDownList>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList3"
                                            ErrorMessage="Please Enter  Center Type."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row justify-content-end">
                                <div class="col-sm-5">
                                    <br />
                                    <asp:Button class="btn btn-success btn-lg btn-danger" ID="Button1" runat="server" Text="Add Center" OnClick="Button1_Click" />

                                </div>
                            </div>


                        </form>
                </div>

            </div>
        </div>
    </body>
    </html>
</asp:Content>
