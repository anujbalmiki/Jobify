<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobs.aspx.cs" Inherits="Pages_jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .bgimage{
            background-image: url("Resouces/Jobify2.png");
            background-size: cover;
            height:25rem;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    </div>
    <div class="d-flex gap-5 row " style="padding-left: 5.8rem; padding-right: 5.8rem; padding-top: 1rem;">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="JobifyConnection">
            <itemtemplate>
                <div class="card" style="width: 30rem">
                    <div class="card-body">
                        <h5 class="card-title"><%#Eval("name") %></h5>
                        <p class="card-text"><%#Eval("description") %></p>
                        <p class="card-text"><%#Eval("emptype") %></p>
                        <p class="card-text"><%#Eval("role") %></p>
                        <p class="card-text"><%#Eval("salary") %></p>
                        <a href="#" class="btn btn-primary">Apply Now</a>
                    </div>
                </div>
            </itemtemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="JobifyConnection" runat="server" ConnectionString="<%$ ConnectionStrings:JobifyConnectionString %>" SelectCommand="SELECT [name], [description], [department], [role], [emptype], [salary] FROM [Jobs]"></asp:SqlDataSource>
    </div>
</asp:Content>

