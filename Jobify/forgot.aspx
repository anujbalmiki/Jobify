<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/docs/5.0/assets/css/docs.css" rel="stylesheet">
    <style>
    	body {
    		margin-top: 20px;
    		background-color: #f2f3f8;
    	}

    	.card {
    		margin-bottom: 1.5rem;
    		box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
    	}

    	.card {
    		position: relative;
    		display: -ms-flexbox;
    		display: flex;
    		-ms-flex-direction: column;
    		flex-direction: column;
    		min-width: 0;
    		word-wrap: break-word;
    		background-color: #fff;
    		background-clip: border-box;
    		border: 1px solid #e5e9f2;
    		border-radius: .2rem;
    	}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container h-100">
        <div class="row h-100">
            <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
                <div class="d-table-cell align-middle">

                    <div class="text-center mt-4">
                        <h1 class="h2">Reset password</h1>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <div class="m-sm-4">
                                <div class="form-group">

                                    <asp:Label runat="server">Email</asp:Label>
                                    <asp:TextBox runat="server" ID="remail" class="form-control form-control-lg" type="email" placeholder="Enter your email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required field" ControlToValidate="remail" ForeColor="Red"></asp:RequiredFieldValidator>&nbsp
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="remail" ErrorMessage="Email should be in proper format" ForeColor="Red"
                                                        ValidationExpression="^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+.)+[a-z]{2,5}$"></asp:RegularExpressionValidator>
                                    <asp:Label ID="lblmsg" runat="server" Visible="false"></asp:Label><br />

                                    <asp:Label runat="server" ID="rotp" Visible="false">OTP</asp:Label>
                                    <asp:TextBox runat="server" ID="TextBox1" class="form-control form-control-lg" placeholder="Enter the OTP" Visible="false"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><br />

                                    <asp:Label runat="server" ID="rpass" Visible="false">Password</asp:Label>
                                    <asp:TextBox runat="server" ID="TextBox2" class="form-control form-control-lg" type="password" placeholder="Enter your new password" Visible="false"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><br />

                                    <asp:Label runat="server" ID="rconpass" Visible="false">Confirm Password</asp:Label>
                                    <asp:TextBox runat="server" ID="TextBox3" class="form-control form-control-lg" type="password" placeholder="Confirm password" Visible="false"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Both password fields should be same.." ControlToValidate="TextBox3" ControlToCompare="TextBox2" ForeColor="Red"></asp:CompareValidator>
                                </div>
                                <div class="text-center mt-3">
                                    <asp:Button runat="server" ID="sendotp" class="btn btn-lg btn-primary" Text="Send OTP" OnClick="sendotp_Click" />
                                    <asp:Button runat="server" ID="reset" class="btn btn-lg btn-primary" Text="Reset Password" Visible="false" OnClick="reset_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

