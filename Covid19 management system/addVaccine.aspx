<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="addVaccine.aspx.cs" Inherits="Covid19_management_system.addVaccine" %>

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
                <asp:Label ID="Label1" runat="server" Text="Add Vaccine" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

            </div>
        </section>
        <!-- End Hero -->

        <div class="container mt-4 p-4">
            <div class="row">
                <div class="col-md-6">
                    <center>
                        <h2 class="text-center my-mx-xxl-auto">Add Vaccination</h2>
                        <form>
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name of Vaccine*"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name of Vaccine" ForeColor="#CC0000"></asp:RequiredFieldValidator>

                                </div>
                            </div>
                            <br />

                            <!---->
                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Gap between 2 dose*"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter the Gap between 2 dose" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <!---->
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Precautions*" Text="Age must be above 18 years. Do not take the vaccine on an Empty Stomach Drink plenty of the Water And the stay hydrated. Get good peaceful sleep at night Avoid Excess Alcohol intake at it may dehydrate you.
"
                                        TextMode="MultiLine" ReadOnly="true" Width="350" Height="150" Font-Bold="true" ForeColor="IndianRed" CssClass="align-items-center" Style="text-align:center"   BorderColor="White"></asp:TextBox>
                                    &nbsp;&nbsp;&nbsp;
                                  
                                </div>
                            </div>
                            <br />
                            <div class="form-group row justify-content-end">
                                <div class="col-sm-5">
                                    <br />
                                    <asp:Button class="btn btn-success btn-lg btn-danger" ID="Button1" runat="server" Text="Add Vaccine" OnClick="Button1_Click" />

                                </div>
                            </div>


                        </form>
                </div>

            </div>
        </div>
  
</asp:Content>
