<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

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
    <script>
        function toggleNavbar(collapseID) {
            document.getElementById(collapseID).classList.toggle("hidden");
            document.getElementById(collapseID).classList.toggle("block");
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main class="profile-page">
        <section class="relative block" style="height: 500px;">
            <div
                class="absolute top-0 w-full h-full bg-center bg-cover"
                style='background-image: url("https://images.unsplash.com/photo-1499336315816-097655dcfbda?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=2710&amp;q=80");'>
                <span
                    id="blackOverlay"
                    class="w-full h-full absolute opacity-50 bg-black"></span>
            </div>
            <div
                class="top-auto bottom-0 left-0 right-0 w-full absolute pointer-events-none overflow-hidden"
                style="height: 70px;">
                <svg
                    class="absolute bottom-0 overflow-hidden"
                    xmlns="http://www.w3.org/2000/svg"
                    preserveAspectRatio="none"
                    version="1.1"
                    viewBox="0 0 2560 100"
                    x="0"
                    y="0">
                    <polygon
                        class="text-gray-300 fill-current"
                        points="2560 0 2560 100 0 100">
                    </polygon>
                </svg>
            </div>
        </section>
        <section class="relative py-16 bg-gray-300">
            <div class="container mx-auto px-4">
                <div
                    class="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
                    <div class="px-6">
                        <div class="flex flex-wrap justify-center">
                            <div
                                class="w-full lg:w-3/12 px-4 lg:order-2 flex justify-center">
                                <div class="relative">
                                    <img
                                        alt="..."
                                        src="https://cdn.pixabay.com/photo/2018/11/13/21/43/instagram-3814049__340.png"
                                        class="shadow-xl rounded-full h-auto align-middle border-none absolute -m-16 -ml-20 lg:-ml-16"
                                        style="max-width: 150px;" />
                                </div>
                            </div>
                            <div
                                class="w-full lg:w-4/12 px-4 lg:order-3 lg:text-right lg:self-center">
                                <div class="py-6 px-3 mt-32 sm:mt-0">
                                    <button
                                        class="bg-pink-500 active:bg-pink-600 uppercase text-white font-bold hover:shadow-md shadow text-xs px-4 py-2 rounded outline-none focus:outline-none sm:mr-2 mb-1"
                                        type="button"
                                        style="transition: all 0.15s ease 0s;">
                                        Connect
                                    </button>
                                </div>
                            </div>
                            <div class="w-full lg:w-4/12 px-4 lg:order-1">
                                <div class="flex justify-center py-4 lg:pt-4 pt-8">
                                    <div class="mr-4 p-3 text-center">
                                        <span
                                            class="text-xl font-bold block uppercase tracking-wide text-gray-700">22</span><span class="text-sm text-gray-500">Friends</span>
                                    </div>
                                    <div class="mr-4 p-3 text-center">
                                        <span
                                            class="text-xl font-bold block uppercase tracking-wide text-gray-700">10</span><span class="text-sm text-gray-500">Photos</span>
                                    </div>
                                    <div class="lg:mr-4 p-3 text-center">
                                        <span
                                            class="text-xl font-bold block uppercase tracking-wide text-gray-700">89</span><span class="text-sm text-gray-500">Comments</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center mt-12">
                            <h3
                                class="text-4xl font-semibold leading-normal mb-2 text-gray-800 mb-2">Jenna Stones
                            </h3>
                            <div
                                class="text-sm leading-normal mt-0 mb-2 text-gray-500 font-bold uppercase">
                                <i
                                    class="fas fa-map-marker-alt mr-2 text-lg text-gray-500"></i>
                                Los Angeles, California
                            </div>
                            <div class="mb-2 text-gray-700 mt-10">
                                <i class="fas fa-briefcase mr-2 text-lg text-gray-500"></i>Solution Manager - Creative Tim Officer
                            </div>
                            <div class="mb-2 text-gray-700">
                                <i class="fas fa-university mr-2 text-lg text-gray-500"></i>University of Computer Science
                            </div>
                        </div>
                        <div class="mt-10 py-10 border-t border-gray-300 text-center">
                            <div class="flex flex-wrap justify-center">
                                <div class="w-full lg:w-9/12 px-4">
                                    <p class="mb-4 text-lg leading-relaxed text-gray-800">
                                        An artist of considerable range, Jenna the name taken by
                      Melbourne-raised, Brooklyn-based Nick Murphy writes,
                      performs and records all of his own music, giving it a
                      warm, intimate feel with a solid groove structure. An
                      artist of considerable range.
                                    </p>
                                    <a href="#pablo" class="font-normal text-pink-500">Show more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
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
                                                        <input type="text" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplev2">First name</asp:Label>
                                                    </div>

                                                </div>
                                                <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-outline">
                                                        <input type="text" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplev3">Middle name</asp:Label>
                                                    </div>

                                                </div>
                                                <div class="col-md-6 mb-4 pb-2">

                                                    <div class="form-outline">
                                                        <input type="text" class="form-control form-control-lg" />
                                                        <asp:Label runat="server" class="form-label" for="form3Examplev3">Last name</asp:Label>
                                                    </div>

                                                </div>
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

