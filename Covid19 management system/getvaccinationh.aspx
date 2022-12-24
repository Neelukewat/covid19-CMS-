<%@ Page Title="" EnableEventValidation="false" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="getvaccinationh.aspx.cs" Inherits="Covid19_management_system.getvaccinationh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="css/StyleSheet2.css" rel="stylesheet" />


    <!-- ======= Hero Section ======= -->
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <section id="hero" class="d-flex align-items-center">
        <div class="container text-right position-relative">
            <asp:Label ID="Label1" runat="server" Text="Vaccination Dose Pane" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

        </div>
    </section>
    <!-- End Hero -->
    <div class="container mt-4 p-4">
        <div class="row">
            <div class="col-md-6">

                <h2 class="text-center my-mx-xxl-auto">Vaccination Dose Pane</h2>
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
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control noprint" placeholder="Reference Id*" Width="294px"></asp:TextBox></td>
                            <td>
                                <asp:Button ID="Button2" runat="server" class="btn btn-success noprint" Text="Search" OnClick="Button2_Click" />
                                <br />
                            </td>
                        </tr>
                    </table>
                <table>
                    <tr>
                        <td>
                            <p class="auto-style2">
                                <center>
                                    <asp:Label ID="Label4" Visible="false" runat="server" Text="User Details:"></asp:Label>
                                </center>
                            </p>
                        </td>
                    </tr>
                </table>




                <center>

                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="50px" Width="399px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <Fields>
                            <asp:TemplateField HeaderText="Vaccination" SortExpression="vaccinetype">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vaccinetype") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("vaccinetype") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("vaccinetype") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Center Id" SortExpression="centername">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("centername") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("centername") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("centername") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="username">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Age" SortExpression="age">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("age") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("age") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Date" SortExpression="date">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("date") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("date") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Charges" SortExpression="charges">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("charges") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("charges") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("charges") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Aadhar No." SortExpression="aadhar">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("aadhar") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>

                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("aadhar") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("aadhar") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText=" Aadhar Card Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Width="280" Height="200" ImageUrl='<%# Eval("addimage")%>' />
                                    <asp:Label ID="Label9" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    </asp:DetailsView>
                </center>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button class="btn btn-success btn-lg btn-danger" ID="Button1" runat="server" Text="Done" OnClick="Button1_Click" Visible="false" />

                    </ContentTemplate>

                </asp:UpdatePanel>
                <br />
            </div>
        </div>
    </div>
    <table>
        <tr>
            <td>
                <p class="auto-style2">
                    <center>
                        <asp:Label ID="Label3" Visible="false" runat="server" Text="label"></asp:Label>
                    </center>
                </p>
            </td>
        </tr>
    </table>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:covid19ConnectionString2 %>" SelectCommand="SELECT [vaccinetype], [centername], [username], [city], [age], [date], [charges], [referenceno] FROM [book_appointment] ORDER BY [referenceno]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:covid19ConnectionString2 %>" SelectCommand="SELECT * FROM [signup]"></asp:SqlDataSource>
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


</asp:Content>
