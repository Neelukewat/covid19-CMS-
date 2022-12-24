<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_certificate.aspx.cs" Inherits="Covid19_management_system.user_certificate" %>
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
                <asp:Label ID="Label1" runat="server" Text="Certificate" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

            </div>
        </section>
        <!-- End Hero -->
        <center>
            
       
         
        <div class="container mt-4 p-4">
            <div class="row">
                <div class="col-md-6">
                 
                        <h2 class="text-center my-mx-xxl-auto">Certificate</h2>
                        <div class="form-group row justify-content-end">
                                <div class="col">
                                    <asp:Button ID="Button1" CssClass="btn-danger btn-alert-success" runat="server"  Text="Print Certificate" />
                                    <br />
                                       
                                </div>
                            </div>
                          
           </div>
 </div>
            </div>
        </center>
    
</asp:Content>
