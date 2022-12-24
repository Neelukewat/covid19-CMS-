<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Covid19_management_system.homepage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            margin-left: 240px;
        }

        .newStyle1 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            font-size: small;
            font-weight: bold;
            font-style: normal;
            text-transform: capitalize;
            color: #808080;
        }

        .newStyle2 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            font-size: x-large;
            font-style: normal;
            font-weight: bold;
            font-variant: normal;
            text-transform: capitalize;
            color: #000000;
        }

        .newStyle3 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }

        .newStyle4 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            font-style: normal;
            font-weight: 100;
            color: #000000;
        }

        .newStyle8 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }

        .label1 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: large;
            font-weight: 800;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #808080;
        }

        .newStyle9 {
            font-weight: 700;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #FFFF00;
            text-align: right;
        }

        .newStyle10 {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #FFFF00;
        }

        .newStyle11 {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #FFFF00;
        }

        .newStyle12 {
            font-size: medium;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #FFFF00;
            text-align: right;
        }

        .newStyle13 {
            font-size: medium;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #FFFFFF;
        }

        .newStyle14 {
            background-color: #FFFFFF;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/StyleSheet5.css" rel="stylesheet" />
    <section id="hero" class="d-flex align-items-center">

        <div class="container text-right position-relative">
            <asp:Label ID="Label1" runat="server" Text="Prevent the spread stay at home ,stay safe" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Get Vaccinated from covid-19 ,Research proves " CssClass="accordion-body" Font-Size="Large" ForeColor="LightGray" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Vaccination prevent serious illness" CssClass="accordion-body" Font-Size="Large" ForeColor="LightGray" Font-Bold="True"></asp:Label>
        </div>

    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <asp:Label ID="Label5" runat="server" Text="Coronavirus Diseases" CssClass="alert-heading" Font-Bold="True" Font-Size="XX-Large" ForeColor="Black"></asp:Label>

                        <br />
                        <asp:Label ID="Label6" runat="server" ForeColor="Gray" Text="Corana Diseases is caused by Covid-19 virus which infects lungs" CssClass="label1"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" ForeColor="Gray" Text="of a persof the person on and cause clotting in the body" CssClass="label1"></asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Following  precautions to be taken to prevent Covid-19:-" CssClass="newStyle4"></asp:Label>

                    </center>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <center>
                            <img src="img/images.png" width="300" />
                        </center>
                    </div>
                    <div class="col-md-4">
                        <br />

                        <br />
                        <br />
                        <br />
                        <center>
                            <asp:BulletedList ID="BulletedList1" runat="server" Height="140px" Width="414px" CssClass="newStyle8" OnClick="BulletedList1_Click">
                                <asp:ListItem Selected="True">🚫🤦Avoid Touching Your face.</asp:ListItem>
                                <asp:ListItem>🚫🤧🤲 Don't sneeze into hands</asp:ListItem>

                                <asp:ListItem>✅🤧💪Do sneeze into your elbow</asp:ListItem>
                                <asp:ListItem>✅🏡😷Stay home if you feel unwell.</asp:ListItem>
                                <asp:ListItem>🧼🖐⏲Wash your hands regularly.</asp:ListItem>

                            </asp:BulletedList>
                        </center>
                    </div>
                    <div class="col-md-4">

                        <iframe src="https://giphy.com/embed/hpXFi66bfQm7e81ohw" width="500" height="300" frameborder="0" class="giphy-embed"></iframe>
                    </div>

                </div>
            </div>
        </div>
    </section>





    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h1><span class="newStyle1">Protect Yourself?</span></h1>
                        <p><b class="newStyle2">Takes Steps To Protect Yourself</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <img src="img/mast.jpeg" width="170px" />
                        <h4>Wear A Face Mask</h4>
                        <p class="text-justify">Always wear a face mask as it prevents virus and other contaminations spreading from one to anothert.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="img/avaid.jpeg" width="220px" />
                        <h4>Avoid Close Contact</h4>
                        <p class="text-justify">Maintain social distancing as virus can not spread far away to avoid close contact to contain the spread</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <img src="img/WASH.jpeg" width="130px" />
                        <h4>Wash Your Hands</h4>
                        <p class="text-justify">Regularly wash your hands as it prevents virus entring our body. Before eating,make it a habit to wash your hands.</p>
                    </center>
                </div>

            </div>
        </div>

    </section>

    <section>
        <link href="css/StyleSheet8.css" rel="stylesheet" />
        <div class="hero-image">
            <center>

                <h4><span class="newStyle9">Latest News</span></h4>
            </center>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" class="newStyle12" NavigateUrl="https://www.webmd.com/vaccines/covid-19-vaccine/news/20220218/covid-19-vaccines-offer-strong-protection-against-reinfection" Font-Underline="false">COVID-19 Vaccines Offer Strong Protection Against Reinfection.</asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lal" runat="server" CssClass="newStyle13">COVID-19 vaccination offers durable protection against reinfection, according to two studies published Wednesday in the New England Journal of Medicine. </asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" class="newStyle12" NavigateUrl="https://www.webmd.com/vaccines/covid-19-vaccine/news/20220318/moderna-pfizer-second-boosters-fda" Font-Underline="false">Moderna, Pfizer Want FDA to OK Second Boosters</asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" CssClass="newStyle13">Moderna and Pfizer are seeking FDA approval for second COVID-19 booster shots.</asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" class="newStyle12" NavigateUrl="https://www.webmd.com/coronavirus-in-context/video/deepak-bhatt" Font-Underline="false">Coronavirus in Context:The Latest Update on COVID-19 and the Heart</asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" CssClass="newStyle13">WebMD's Chief Medical Officer, John Whyte, speaks with Deepak L. Bhatt, MD, MPH. Executive Director of Interventional Cardiovascular Programs at Brigham.</asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" class="newStyle12" NavigateUrl="https://health.economictimes.indiatimes.com/news/policy/drop-in-covid-cases-switch-back-to-old-duties-frontline-warriors-told/90336643" Font-Underline="false">
Drop in Covid cases: Switch back to old duties, ‘frontline warriors’ told</asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" CssClass="newStyle13">Health workers and other staff attached for Covid-19 duties have been ordered to go back to their “parent posting or departments”.</asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" class="newStyle12" NavigateUrl="https://health.economictimes.indiatimes.com/news/hospitals/aster-cmi-hospital-and-iisc-launch-ai-lab/90334516" Font-Underline="false">Aster CMI Hospital and IISc launch AI lab</asp:HyperLink>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" CssClass="newStyle13">The lab is established to enable the development of highly impactful research,technologies and upskill healthcare professionals on AI.</asp:Label>
            <br />
        </div>

    </section>
</asp:Content>
