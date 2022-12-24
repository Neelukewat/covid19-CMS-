<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userpanel.aspx.cs" Inherits="Covid19_management_system.userpanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            font-weight: 700;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #FFCD39;
        }
        .newStyle8 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Required meta tags -->

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="css/StyleSheet2.css" rel="stylesheet" />


    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">
        <div class="container text-right position-relative">
            <asp:Label ID="Label1" runat="server" Text="User Panel" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

        </div>
    </section>
    <!-- End Hero -->
    <center>
        <span class="newStyle1">User Panel
        </span>
    </center>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2></h2>
                    <p><b></b></p>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <center>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/sys.jpeg" Width="150px" PostBackUrl="~/checkSymptom.aspx" />


                    <h4>Symptoms</h4>
                    <p class="text-justify">
                        COVID-19 affects different people in different ways. So You can see the Symptom for Covid-19.
                    </p>
                </center>
            </div>

            <div class="col-md-4">
                <center>
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/img/book appointment.jpg" Width="80px" PostBackUrl="~/bookAppointement.aspx" />
                    <h4>Book Appointment</h4>
                    <p class="text-justify">You can Book the Appointment for Vaccination Dose.</p>
                </center>
            </div>

            <div class="col-md-4">
                <center>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/img/certificate.jpg" Width="80px" PostBackUrl="~/user_certificate.aspx" />
                    <h4>Print Certificate</h4>
                    <p class="text-justify">You can download Vaccination Cetificate.For both vaccination Dose. </p>
                </center>
            </div>

            <div class="col-md-4">
                <center>
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/img/list.png" Width="80px" PostBackUrl="~/Vacine_List.aspx" />
                    <h4>Vaccine List</h4>
                    <p class="text-justify">You can see the available Vaccination list.</p>
                </center>
            </div>

            <div class="col-md-4">
                <center>
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/img/statics.png" Width="130px" hr />
                    <h4>
                        <asp:HyperLink ID="HyperLink2" runat="server" class="newStyle12" NavigateUrl="https://www.incovid19.org/state/MH" Font-Underline="false" CssClass="newStyle8">Statistics</asp:HyperLink></h4>

                <p class="text-justify">You can Visit or See the Statics of the Covid-19 cases like Active Case, Recover Patient and Death Report.</p>
            </div>


        </div>

    </div>
</asp:Content>
