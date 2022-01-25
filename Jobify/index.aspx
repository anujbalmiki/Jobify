<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>--%>
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="/docs/5.0/assets/css/docs.css" rel="stylesheet">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/89ff3cdf00.js" crossorigin="anonymous"></script>
    <style>
        .bgimage{
            background-image: url("Resouces/Jobify2.png");
            background-size: cover;
            height:25rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="bgimage pt-5">
        <section class="text-gray-600 body-font">
            <div class="container mx-auto flex px-5 py-24 md:flex-row flex-col items-center">
                <div class="lg:flex-grow md:w-1/2 lg:pr-24 md:pr-16 flex flex-col md:items-start md:text-left mb-16 md:mb-0 items-center text-center">
                    <p class="title-font sm:text-4xl text-3xl mb-4 font-large text-white">Search the Job you wanted all along.....</p>
                    <div class="flex w-full md:justify-start justify-center items-end">
                        <div class="relative mr-4 md:w-full lg:w-full xl:w-1/2 w-2/4">
                            <asp:TextBox runat="server" type="text" ID="searchbox" placeholder="Industry, Education..etc" name="hero-field" class="w-full bg-transparent rounded border bg-opacity-50 border-white focus:ring-2 focus:ring-indigo-200 focus:bg-transparent focus:border-white text-base outline-none text-white py-1 px-3 leading-8 transition-colors duration-200 ease-in-out"></asp:TextBox>
                        </div>
                        <asp:Button runat="server" ID="searchbtn" Text="Search" class="inline-flex text-black bg-white border-0 py-2 px-6 focus:outline-none hover:bg-gray-600 rounded text-lg"></asp:Button>
                    </div>
                </div>
            </div>
        </section>
        <asp:Label runat="server" id="label123"></asp:Label>
    </div>
</asp:Content>

