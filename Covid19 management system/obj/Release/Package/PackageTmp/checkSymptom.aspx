<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkSymptom.aspx.cs" Inherits="Covid19_management_system.checkSymptom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .newStyle1 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: normal;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #212529;
            line-height: normal;
            font-size: large;
        }
        .newStyle2 {
            color: #A52834;
            font-weight: bold;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        }
        .newStyle3 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: medium;
            font-weight: bold;
            font-variant: normal;
            color: #A52834;
        }
        .newStyle4 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: medium;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #A52834;
        }
        .newStyle5 {
            font-family: "Times New Roman", Times, serif;
            font-size: larger;
            font-weight: normal;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #1A1E21;
        }
        .newStyle6 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #A52834;
        }
        .newStyle7 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #A52834;
        }
        .newStyle8 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            color: #800000;
        }
        .newStyle9 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }
        .newStyle10 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            color: #800000;
        }
        .newStyle11 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            color: #800000;
        }
        .newStyle12 {
            color: #800000;
            font-weight: bold;
            font-size: large;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        }
        .newStyle13 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            color: #800000;
        }
        .newStyle14 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            color: #800000;
        }
        .newStyle15 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }
        .newStyle16 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }
        .newStyle17 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }
        .newStyle18 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }
        .newStyle19 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/StyleSheet4.css" rel="stylesheet" />
            <section id="hero" class="d-flex align-items-center">
            <div class="container text-right position-relative">
                <asp:Label ID="Label1" runat="server" Text="Symptoms" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                            <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="#669999" Font-Bold="True"></asp:Label>
   
            </div>
        </section>
                    <center>
                    <h2 class="text-center my-4">Symptoms</h2>
                        </center>
                        <p><span style="color: rgb(17, 17, 17); font-family: Helvetica, Arial, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">           <span class="newStyle1">&nbsp;&nbsp;           Signs and symptoms of coronavirus disease 2019 (COVID-19) may appear 2 to 14 days after exposure. This time after exposure and before having symptoms is called the incubation period. You can still spread&nbsp;Covid-19&nbsp;before 
                            you have symptoms (presymptomatic transmission). Common signs and symptoms can include:</span></span></p>
                        <ul style="font-family: Helvetica, Arial, sans-serif; margin: 0px 0px 0px 36px; padding: 0px 0px 24px; color: rgb(17, 17, 17); font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle10">Fever</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle10">Cough</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle10">Tiredness</span></li>
                            
                        </ul>
    <center>
    <img src="img/SYsmptoms.jpeg"  width: 800px  height:"539px" /></center>
                        <p style="font-family: Helvetica, Arial, sans-serif; margin: 0px 0px 24px; padding: 0px; line-height: 1.5em; color: rgb(17, 17, 17); font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                            <span class="newStyle5">&nbsp;&nbsp;
                            Other symptoms can include:</span></p>
<ul style="font-family: Helvetica, Arial, sans-serif; margin: 0px 0px 0px 80px; padding: 0px 0px 24px; color: rgb(17, 17, 17); font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" class="newStyle6">
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;" class="newStyle14"><span class="newStyle15">Shortness of breath or difficulty breathing</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle16">Muscle aches</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle17">Chills</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle18">Sore throat</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle19">Runny nose</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle13">Headache</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle12">Chest pain</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle11">Pink eye (conjunctivitis)</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle10">Nausea</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle9">Vomiting</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle8">Diarrhea</span></li>
                            <li style="font-family: Helvetica, Arial, sans-serif; margin-bottom: 12px; line-height: 1.4em;"><span class="newStyle8">Rash</span></li>
                        </ul>
                        <p class="text-center my-4">&nbsp;</p>
                        <p class="text-center my-4"></p>
                        
                    
</asp:Content>
