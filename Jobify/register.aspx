<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/docs/5.0/assets/css/docs.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/89ff3cdf00.js" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type = "text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=CheckBox1.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="padding-bottom:21rem; padding-top:3rem;">
        <section class="vh-100">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                        <%--<form class="mx-1 mx-md-4">--%>
                                        <div class="mx-1 mx-md-4">

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="Textbox1" runat="server" type="text" class="form-control"></asp:TextBox>
                                                    <asp:Label runat="server" class="form-label">Your Name*</asp:Label>&nbsp
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required field" ControlToValidate="Textbox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="Textbox2" runat="server" type="email" class="form-control"></asp:TextBox>
                                                    <asp:Label runat="server" class="form-label" >Your Email*</asp:Label >&nbsp
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required field" ControlToValidate="Textbox2" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textbox2" ErrorMessage="Email should be in proper format" ForeColor="Red"
                                                        ValidationExpression="^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+.)+[a-z]{2,5}$"></asp:RegularExpressionValidator>

                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="Textbox3" runat="server" type="password" class="form-control"></asp:TextBox>
                                                    <asp:Label runat="server" class="form-label" >Password*</asp:Label >&nbsp
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required field" ControlToValidate="Textbox3" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:TextBox ID="Textbox4" runat="server" type="password" class="form-control"></asp:TextBox>
                                                    <asp:Label runat="server" class="form-label">Repeat your password*</asp:Label >&nbsp
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required field" ControlToValidate="Textbox4" ForeColor="Red"></asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password fields should be same.." ControlToValidate="Textbox4" ControlToCompare="Textbox3" ForeColor="Red"></asp:CompareValidator>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <asp:Label runat="server" class="form-label">Who you are*</asp:Label ><br />
                                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                        <asp:ListItem Text="Seeker"></asp:ListItem>
                                                        <asp:ListItem Text="Provider"></asp:ListItem>
                                                    </asp:RadioButtonList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required field" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                            <div class="form-check d-flex justify-content-center mb-5">
                                                <asp:CheckBox ID="CheckBox1" runat="server" class="form-input me-2"></asp:CheckBox>
                                                <asp:Label runat="server" class="form-check-label">
                                                    I agree all statements in <a href="#!">Terms of service</a>
                                                </asp:Label >
                                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please accept the terms..." ClientValidationFunction = "ValidateCheckBox" ForeColor="Red"></asp:CustomValidator>
                                            </div>

                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <asp:Button runat="server" Text="Register" type="button" class="btn btn-primary btn-lg" OnClick="Register"></asp:Button><%--OnClick="Register"--%>
                                            </div>

                                            <%--</form>--%>
                                        </div>
                                        

                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp" class="img-fluid" alt="Sample image">
                                    </div>
                                    <asp:Label runat="server" ID="lblMsg" Visible="false"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

