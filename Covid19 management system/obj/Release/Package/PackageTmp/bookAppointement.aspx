<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bookAppointement.aspx.cs" Inherits="Covid19_management_system.bookAppointement" %>

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
                <asp:Label ID="Label1" runat="server" Text="Book Appointment" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

            </div>
        </section>
        <!-- End Hero -->
        <div class="container mt-4 p-4">
            <div class="row">
                <div class="col-md-6">
                    <center>
                        <h2 class="text-center my-mx-xxl-align-content-center">Book Appointment</h2>
                    </center>
                </div>
            </div>
        </div>
        <div class="container mt-4 p-4">
            <div class="row">
                <div class="col-md-6">
                    <center>
                        <form>
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                            <asp:ListItem Text="Choose State*" Value="select" />
                                            <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                            <asp:ListItem Text="Punjab" Value="Punjab" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                            ControlToValidate="DropDownList1" ErrorMessage="Please Choose State."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                            <asp:ListItem Text="Choose City Now*" Value="select" />
                                            <asp:ListItem Text="Mumbai" Value="Mumbai" />
                                            <asp:ListItem Text="Pune" Value="Pune" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="DropDownList2" ErrorMessage="Please Choose City."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                            <asp:ListItem Text="Choose Center*" Value="select" />
                                            <asp:ListItem Text="xyzhospital" Value="xyzhospital" />
                                            <asp:ListItem Text="abchospital" Value="abchospital" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ControlToValidate="DropDownList3" ErrorMessage="Please Choose Center."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="true">
                                            <asp:ListItem Text="Choose Vaccine*" Value="select" Selected="True" />
                                            <asp:ListItem Text="covishield" Value="covishield" />
                                            <asp:ListItem Text="Covaxin" Value="Covaxin" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                            ControlToValidate="DropDownList4" ErrorMessage="Please Choose Vaccine."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="form-group row">
                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" ID="DropDownList5" runat="server">
                                            <asp:ListItem Text="Choose Age*" Value="select" Selected="True" />
                                            <asp:ListItem Text="18+" Value="18+" />
                                            <asp:ListItem Text="45+" Value="45+" />
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ControlToValidate="DropDownList5" ErrorMessage="Please Choose Age."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>
                            <br />



                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">

                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"  
                                               ControlToValidate="TextBox1"  ErrorMessage="Please Select Date."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        <asp:Label ID="Label3" runat="server"></asp:Label>

                                    </div>
                                </div>
                            </div>
                            <br />


                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Time" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"  
                                               ControlToValidate="TextBox4"  ErrorMessage="Please Select Time."
                                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        <asp:Label ID="Label4" runat="server"></asp:Label>

                                        </div>
                                </div>
                            </div>
                            <br />

                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" ReadOnly="true"></asp:TextBox>
                               
                                        <asp:Label ID="Label5" runat="server"></asp:Label>

                                    </div>
                            </div>
                            <br />
                            <div class="form-group row">

                                <div class="col-sm-8 col-lg-8">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" ReadOnly="true" placeholder="charges*" required></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <div class="form-group row justify-content-end">
                                <div class="col-sm-5">
                                    <br />
                                    <asp:Button class="btn btn-success btn-lg btn-danger" ID="Button1" runat="server" Text="Book Appointment" OnClick="Button1_Click" />

                                </div>
                            </div>
                        </form>
                </div>

            </div>
        </div>
   
</asp:Content>
