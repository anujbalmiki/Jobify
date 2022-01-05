﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/docs/5.0/assets/css/docs.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/89ff3cdf00.js" crossorigin="anonymous"></script>
    <style>
        @media (min-width: 1025px) {
            .h-custom {
                height: 100vh !important;
            }
        }

        .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
        }

        .card-registration .select-arrow {
            top: 13px;
        }

        .gradient-custom-2 {
            /* fallback for old browsers */
            background: #a1c4fd;
            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to right, rgba(161, 196, 253, 1), rgba(194, 233, 251, 1));
            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to right, rgba(161, 196, 253, 1), rgba(194, 233, 251, 1))
        }

        .bg-indigo {
            background-color: #4835d4;
        }

        @media (min-width: 992px) {
            .card-registration-2 .bg-indigo {
                border-top-right-radius: 15px;
                border-bottom-right-radius: 15px;
            }
        }

        @media (max-width: 991px) {
            .card-registration-2 .bg-indigo {
                border-bottom-left-radius: 15px;
                border-bottom-right-radius: 15px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <section class="h-100 h-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12">
                        <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                            <div class="card-body p-0">
                                <div class="row g-0">
                                    <div class="col-lg-6">
                                        <div class="p-5">
                                            <h3 class="fw-normal mb-5 text-black">General Infomation</h3>

                                            <div class="mb-4 pb-2">
                                                <select class="select">
                                                    <option value="1">Title</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                    <option value="4">Four</option>
                                                </select>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-outline">
                                                        <input type="text" id="form3Examplev2" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplev2">First name</asp:Label>
                                                    </div>

                                                </div>
                                                <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-outline">
                                                        <input type="text" id="form3Examplev3" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplev3">Last name</asp:Label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="mb-4 pb-2">
                                                <select class="select">
                                                    <option value="1">Position</option>
                                                    <option value="2">Two</option>
                                                    <option value="3">Three</option>
                                                    <option value="4">Four</option>
                                                </select>
                                            </div>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline">
                                                    <input type="text" id="form3Examplev4" class="form-control form-control-lg" />
                                                    <asp:Label runat="server" class="form-label" for="form3Examplev4">Position</asp:Label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4 pb-2 mb-md-0 pb-md-0">

                                                    <div class="form-outline">
                                                        <input type="text" id="form3Examplev5" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplev5">Bussines Arena</asp:Label>
                                                    </div>

                                                </div>
                                                <div class="col-md-6">

                                                    <select class="select">
                                                        <option value="1">Employees</option>
                                                        <option value="2">Two</option>
                                                        <option value="3">Three</option>
                                                        <option value="4">Four</option>
                                                    </select>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 bg-light text-black">
                                        <div class="p-5">
                                            <h3 class="fw-normal mb-5">Contact Details</h3>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline form-white">
                                                    <input type="text" id="form3Examplea2" class="form-control form-control-lg" />
                                                    <asp:Label runat="server" class="form-label" for="form3Examplea2">Street + Nr</asp:Label>
                                                </div>
                                            </div>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline form-white">
                                                    <input type="text" id="form3Examplea3" class="form-control form-control-lg" />
                                                    <asp:Label runat="server" class="form-label" for="form3Examplea3">Additional Information</asp:Label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-5 mb-4 pb-2">

                                                    <div class="form-outline form-white">
                                                        <input type="text" id="form3Examplea4" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplea4">Zip Code</asp:Label>
                                                    </div>

                                                </div>
                                                <div class="col-md-7 mb-4 pb-2">

                                                    <div class="form-outline form-white">
                                                        <input type="text" id="form3Examplea5" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplea5">Place</asp:Label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="mb-4 pb-2">
                                                <div class="form-outline form-white">
                                                    <input type="text" id="form3Examplea6" class="form-control form-control-lg" />
                                                    <asp:Label runat="server" class="form-label" for="form3Examplea6">Country</asp:Label>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-5 mb-4 pb-2">

                                                    <div class="form-outline form-white">
                                                        <input type="text" id="form3Examplea7" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplea7">Code +</asp:Label>
                                                    </div>

                                                </div>
                                                <div class="col-md-7 mb-4 pb-2">

                                                    <div class="form-outline form-white">
                                                        <input type="text" id="form3Examplea8" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplea8">Phone Number</asp:Label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="mb-4">
                                                <div class="form-outline form-white">
                                                    <input type="text" id="form3Examplea9" class="form-control form-control-lg" />
                                                    <asp:Label runat="server" class="form-label" for="form3Examplea9">Your Email</asp:Label>
                                                </div>
                                            </div>

                                            <div class="form-check d-flex justify-content-start mb-4 pb-3">
                                                <input
                                                    class="form-check-input me-3"
                                                    type="checkbox"
                                                    value=""
                                                    id="form2Example3c" />
                                                <asp:Label runat="server" class="form-check-label text-black" for="form2Example3">
                                                    I do accept the <a href="#!" class="text-indigo"><u>Terms and Conditions</u></a> of your site.
                                                </asp:Label>
                                            </div>

                                            <button type="button" class="btn btn-light btn-lg" data-mdb-ripple-color="dark">Register</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

