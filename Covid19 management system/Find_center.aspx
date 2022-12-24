<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Find_center.aspx.cs" Inherits="Covid19_management_system.Find_center" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

   
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="css/StyleSheet2.css" rel="stylesheet" />
   
            <!-- ======= Hero Section ======= -->
            <section id="hero" class="d-flex align-items-center">
                <div class="container text-right position-relative">
                    <asp:Label ID="Label1" runat="server" Text="Search Vaccination Center" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

                </div>
            </section>
            <!-- End Hero -->
            <div class="container mt-4 p-4">
                <div class="row">
                    <div class="col-md-6">
                        <center>
                            <h2 class="text-center my-mx-xxl-align-content-center">Search Vaccination Center</h2>
                        </center>
                    </div>
                </div>
            </div>
            <link href="css/StyleSheet9.css" rel="stylesheet" />
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />
            ; 
            <center>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Search Vaccination Center.." Font-Bold="True" Font-Names="Franklin Gothic Book" Font-Overline="False" TextMode="Search" Width="333px" CssClass="offset-sm-0"></asp:TextBox>&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-primary" Width="73px" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>


            </center>
            <div class="btn">
            </div>
            <br />
            <br />
            <center>
                <asp:GridView ID="GridView1" Visible="true" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="922px">
                    <Columns>
                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="centername" HeaderText="Centername" SortExpression="centername" />
                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                        <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="contact" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="centertype" HeaderText="Centertype" SortExpression="centertype" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
            </center>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:covid19ConnectionString %>" SelectCommand="SELECT [state], [city], [centername], [address], [contact], [email], [centertype] FROM [addcenter]"></asp:SqlDataSource>
    <table><tr><td><p class="auto-style2"> <center>   <asp:Label ID="Label3" Visible="false" runat="server" Text="label"></asp:Label>  </center>
</p></td></tr></table> 
   
</asp:Content>
