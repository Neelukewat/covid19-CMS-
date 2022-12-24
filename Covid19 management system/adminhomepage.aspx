<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminhomepage.aspx.cs" Inherits="Covid19_management_system.adminhomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: xx-large;
            font-weight: 700;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #FFCD39;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="css/StyleSheet2.css" rel="stylesheet" />
   
    
        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container text-right position-relative">
                <asp:Label ID="Label1" runat="server" Text="Admin Panel" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

            </div>
        </section>
        <!-- End Hero -->
    <center>
        <span class="newStyle1">Admin Panel
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
                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="img/vcenter.jpg" Width="80px"   PostBackUrl="~/addVaccineCenter.aspx"/>

                      
                     <h6>Add Center</h6>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                   <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="img/covid-vaccine.png" Width="150px"  PostBackUrl="~/addVaccine.aspx" />
                  <h4>Add Vaccine</h4>
               </center>
            </div>
            <div class="col-md-4">
               <center>
                   <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="img/vacccinesetting.jpg" Width="80px"  PostBackUrl="~/vaccinationSetting.aspx"/>
                  <h4>Vaccination Setting</h4>
               </center>
            </div>
              <br />
            <div class="col-md-4">
               <center>
                   <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="img/OIP%20(2).jpg" Width="80px"  PostBackUrl="~/centerSetting.aspx"/>
                  <h4>Center Setting</h4>
               </center>
            </div>
              <div class="col-md-4">
               <center>
                   <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="img/allotvaccine.png" Width="80px"  PostBackUrl="~/allotVaccine.aspx"/>
                  <h4>Allot Vaccine</h4>
               </center>
            </div>
              <div class="col-md-4">
               <center>
                   <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="img/userlist.jpg" Width="80px"  PostBackUrl="~/userlist.aspx"/>
                  <h4>User List</h4>
               </center>
            </div>
         </div>
          </div>
  
</asp:Content>
