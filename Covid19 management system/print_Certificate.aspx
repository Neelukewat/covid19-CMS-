<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="print_Certificate.aspx.cs" Inherits="Covid19_management_system.print_Certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style3 {
            width: 538px;
        }

        .auto-style1 {
            width: 245px;
        }

        .newStyle8 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            font-size: xx-large;
            font-weight: bolder;
            font-style: normal;
            font-variant: normal;
            text-transform: uppercase;
            color: #000000;
        }

        .newStyle9 {
            font-family: "Lucida Sans", "Lucida Sans Regular", "Lucida Grande", "Lucida Sans Unicode", Geneva, Verdana, sans-serif;
            font-size: large;
            font-weight: bolder;
            font-style: normal;
            font-variant: normal;
            text-transform: uppercase;
            color: #808080;
        }

        .auto-style4 {
            width: 341px;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: x-large;
            font-weight: bold;
            font-style: normal;
            font-variant: normal;
            text-transform: capitalize;
            color: #000000;
            height: 36px;
            margin-left: 0px;
        }

        .auto-style5 {
            width: 735px;
        }

        @media print {
            .noprint {
                display: none !important;
                height: 0px;
            }
        }

        .auto-style6 {
            width: 409px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="css/StyleSheet2.css" rel="stylesheet" />


    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center  noprint">
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




                    <table class="w-100">
                        <tr>
                            <td class="auto-style6">
                                <asp:RadioButton ID="RadioButton1" Class="noprint" runat="server" Text="First Dose" GroupName="dose" />
                                <asp:RadioButton ID="RadioButton2" runat="server" Class="noprint" Text="Second Dose" GroupName="dose" />
                                <br />
                                <br />

                            </td>

                        </tr>

                        <tr>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control noprint " placeholder="Username*" Width="294px"></asp:TextBox></td>
                            <td>
                                <asp:Button ID="Button2" runat="server" class="btn btn-success noprint " Text="Search" OnClick="Button2_Click" />
                                <br />
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" Width="99px" ImageUrl="~/img/satmayejayte.jpg" Visible="false" />
                            </td>
                            <td class="auto-style5">
                                <%--                                <center>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label3" runat="server" Text="Govt.of India" CssClass="newStyle8" Visible="false" /><br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server" Text="Certificate Of Vaccination " Visible="false" CssClass="newStyle9" />
                            </td>
                            <br />
                        </tr>

                    </table>
                    <table>

                        <tr>
                            <td class="auto-style3">
                                <%--                                <>center--%>

                                <asp:DetailsView ID="DetailsView1" runat="server" Visible="false" Height="286px" Width="422px" AutoGenerateRows="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                    <EditRowStyle BackColor="#999999" />
                                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                    <Fields>
                                        <asp:TemplateField HeaderText="Certificate No.">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("certificateno") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("certificateno") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("certificateno") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Name" SortExpression="username">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Vaccine" SortExpression="vaccinetype">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("vaccinetype") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("vaccinetype") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("vaccinetype") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Vaccination Date" SortExpression="date">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Aadhar No.">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("aadhar") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("aadhar") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("aadhar") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Certificate Type">
                                            <EditItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                                            </EditItemTemplate>
                                            <InsertItemTemplate>
                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("type") %>'></asp:TextBox>
                                            </InsertItemTemplate>
                                            <ItemTemplate>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                    </Fields>
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                </asp:DetailsView>
                            </td>



                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <p class="auto-style2">
                                    <center>
                                        <asp:Label ID="Label5" Visible="false" runat="server" CssClass="noprint" Text="label"></asp:Label>
                                    </center>
                                </p>
                            </td>
                        </tr>
                    </table>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:covid19ConnectionString %>" SelectCommand="SELECT [username], [date], [vaccinetype] FROM [book_appointment]"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button1" CssClass="btn-danger btn-alert-success noprint" runat="server" OnClientClick="window.print();" Text="Print Certificate" Visible="false" />

                </div>
            </div>
        </div>
    </center>

</asp:Content>
