<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="vaccinationSetting.aspx.cs" Inherits="Covid19_management_system.vaccinationSetting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 280px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="css/StyleSheet2.css" rel="stylesheet" />
    </head>
    <body>
        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container text-right position-relative">
                <asp:Label ID="Label1" runat="server" Text="Vaacination" CssClass="accordion-body" Font-Size="XX-Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Prevent the spread stay at home,stay safe" CssClass="accordion-body" Font-Size="Large" ForeColor="WhiteSmoke" Font-Bold="false"></asp:Label>

            </div>
        </section>
        <!-- End Hero -->
        <form id="form1">
            <div class="container mt-4 p-4">
                <div class="row">
                    <div class="col-md-6">
                        <center>
                            <h2 class="text-center my-mx-xxl-align-content-center">Available Vaacinations</h2>
                        </center>
                        <div>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:covid19ConnectionString2 %>"
                                SelectCommand="SELECT * FROM [addvaccine]" UpdateCommand="Update addvaccine set vaccinename=@vaccinename,gap=@gap, precautions=@precautions  WHERE vaccinename=@vaccinename"></asp:SqlDataSource>
                            <br />
                        </div>
                        <center>

                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"          CellPadding="4"  ForeColor="Black" GridLines="Horizontal" Width="727px"
                            OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
                            OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="vaccinename" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">

                            <Columns>
                                <asp:TemplateField HeaderText="Vaccine Name" ItemStyle-Width="150">
                                    <ItemTemplate>
                                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("vaccinename") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("vaccinename") %>' Width="140"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="150px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Gap" ItemStyle-Width="150">
                                    <ItemTemplate>
                                        <asp:Label ID="lblgap" runat="server" Text='<%# Eval("gap") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtgap" runat="server" Text='<%# Eval("gap") %>' Width="140"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="150px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Precautions" ItemStyle-Width="150">
                                    <ItemTemplate>
                                        <asp:Label ID="lblpre" runat="server" Text='<%# Eval("precautions") %>' ></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtpre" runat="server" Text='<%# Eval("precautions") %>' TextMode="MultiLine" Width="140"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle Width="150px" />
                                </asp:TemplateField>
                                
                                <asp:CommandField ButtonType="Button" HeaderText="Update" ShowEditButton="True" />
                                <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" />
                                
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
                    </div>
                </div>
            </div>

        </form>

    </body>
    </html>
</asp:Content>
