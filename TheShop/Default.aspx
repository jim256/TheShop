<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheShop._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Intro Header -->
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="brand-heading">The Shop</h1>
                        <p class="intro-text">Collision and Glass</p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- About Section -->
    <section id="about" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>About The Shop</h2>
                <p>The Shop Collision Center and Glass gets your car looking like new at our great auto body shop in Long Beach, CA. Our neighborhood collision center offers quality glass and body repairs that can erase any visible sign of an accident. With an expert staff and fully-equipped auto body shop, we can take on the most severe damage from crashes and collisions and restore your vehicle to almost new condition. We also offer car rentals through enterprise free for 3 days while we repair your vehicle. Our shop does everything from dent removal and scratch repair to windshield replacement and repainting, ensuring a clean, new appearance for your damaged car. We value our customers' time and offer free mobile estimates at your location. </p>
                <p>Check out pictures of past repairs on <a href="https://instagram.com/explore/locations/938540591/">Instagram</a> </p>
                <p>More Text Here</p>
            </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="download" class="content-section text-center">
        <div class="download-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2>Download Grayscale</h2>
                    <p>You can download Grayscale for free on the preview page at Start Bootstrap.</p>
                    <a href="http://startbootstrap.com/template-overviews/grayscale/" class="btn btn-default btn-lg">Visit Download Page</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Your Neighborhood Auto Body Shop</h2> 
                    <div style="float:left" class="text-left" >
                        <h3>Contact Us: </h3>
                        <p>The Shop Collision Center and Glass</p>
                        <p>633 E Broadway</p>
                        <p>Long Beach, CA 90802</p>
                        <p>Local Phone: (562) 590-3900</p>
                    </div>
                    <div style="float:right" class="text-right">
                        <h3>We are open: </h3>
                        <table style="width:100%" class="container">
                            <tr>
                                <td class="text-left" style="padding-right: 10px; padding-bottom: 12px; font-size:20px;">Monday </td>
                                <td class="text-right" style="padding-bottom: 10px; font-size:20px;">8:00 AM - 5:30 PM</td>
                            </tr>
                            <tr>
                                <td class="text-left" style="padding-right: 10px; padding-bottom: 12px; font-size:20px;">Tuesday</td>
                                <td class="text-right" style="padding-bottom: 10px; font-size:20px;">8:00 AM - 5:30 PM</td>
                            </tr>
                            <tr>
                                <td class="text-left" style="padding-right: 10px; padding-bottom: 12px; font-size:20px;">Wednesday</td>
                                <td class="text-right" style="padding-bottom: 10px; font-size:20px;">8:00 AM - 5:30 PM</td>
                            </tr>
                            <tr>
                                <td class="text-left" style="padding-right: 10px; padding-bottom: 12px; font-size:20px;">Tursday</td>
                                <td class="text-right" style="padding-bottom: 10px; font-size:20px;">8:00 AM - 5:30 PM</td>
                            </tr>
                            <tr>
                                <td class="text-left" style="padding-right: 10px; padding-bottom: 12px; font-size:20px;">Friday</td>
                                <td class="text-right" style="padding-bottom: 10px; font-size:20px;">8:00 AM - 5:30 PM</td>
                            </tr>
                            <tr>
                                <td class="text-left" style="padding-right: 10px; padding-bottom: 12px; font-size:20px;">Saturday</td>
                                <td class="text-right" style="padding-bottom: 10px; font-size:20px;">9:00 AM - 2:00 PM</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">             
                <p>Get a free quote!</p>
                <p><a href="mailto:theshoplb4@gmail.com"> Email us at theshoplb4@gmail.com</a>
                </p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://instagram.com/theshopcollisioncenter/" class="btn btn-default btn-lg"><i class="fa fa-instagram fa-fw"></i> <span class="network-name">Instagram</span></a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/The-Shop-Collision-Center-and-Glass-910826905651225/" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                    </li>
                    <li>
                        <a href="https://www.youtube.com/channel/UCGHYzlj_JiNNJfYF_CpwjkQ" class="btn btn-default btn-lg"><i class="fa fa-youtube fa-fw"></i> <span class="network-name">Youtube</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <!-- Map Section 
    <div id="map"><!-- Manual addition of map-->
	<iframe width="100%" height="400" type="text/javascript" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ24JP3j0x3YARXDEpg_TZw4c&key=AIzaSyDLVzPHb0OvujftZXrCX4_plSXiedSKOzw" allowfullscreen></iframe>
</asp:Content>


