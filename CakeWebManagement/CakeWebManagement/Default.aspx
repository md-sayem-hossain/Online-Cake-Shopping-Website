<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CakeWebManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <style>
        .hero {
            width: 80vw;
            height: 70vh;
            display: flex;
            justify-content: center;
            align-items: center;
            /*text-align: center;*/
            color: black;
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            /*box-shadow: 0 0 10px #9192a094;*/
            border-radius: 10px;
            margin: auto;
            margin-top: 65px;
            padding: 70px;
        }

            .hero h1 {
                /* Text styles */
                font-size: 3em;
                /* Margins */
                margin-top: 0;
                margin-bottom: 0.5em;
                font-weight: 700;
                /*width: 90%;*/
            }

            .hero h2 {
                font-size: 16px;
            }

        .item-text {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-top: 10px;
        }

            .item-text h4 {
                font-size: 14px;
                font-weight: 500;
                width: 70%;
            }

        .card p {
            font-size: 12px;
            opacity: 0.5;
            line-height: 0;
        }

        .item-text h2 {
            font-size: 16px;
            font-weight: 700;
        }

        .card {
            padding: 10px;
            height: 290px;
        }

            .card img {
                height: 160px;
                width: 100%;
                /*object-fit: cover;*/
                overflow: hidden;
                text-align: center;
                margin: auto;
                opacity: 1;
                transition: .5s ease;
            }

            .card .content-overlay {
                background: rgba(0,0,0,0.7);
                position: absolute;
                height: 100%;
                width: 100%;
                left: 0;
                top: 0;
                bottom: 0;
                right: 0;
                opacity: 0;
                -webkit-transition: all 0.4s ease-in-out 0s;
                -moz-transition: all 0.4s ease-in-out 0s;
                transition: all 0.4s ease-in-out 0s
            }

            .card:hover .content-overlay {
                opacity: 1;
            }

        .content-details {
            position: absolute;
            text-align: center;
            padding-left: 1em;
            padding-right: 1em;
            width: 100%;
            top: 50%;
            left: 50%;
            opacity: 0;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            -webkit-transition: all 0.3s ease-in-out 0s;
            -moz-transition: all 0.3s ease-in-out 0s;
            transition: all 0.3s ease-in-out 0s;
        }

        .card:hover .content-details {
            top: 50%;
            left: 50%;
            opacity: 1;
        }

        .card:hover .card-img-top {
            opacity: 0;
            background: red;
        }


        .fadeIn-bottom {
            top: 80%
        }

        .btn-1, .btn-2 {
            width: 100px;
            font-size: 12px;
        }

        .btn-1 {
            background: gray;
            color: white;
            margin-bottom: 10px;
        }

        .btn-2 {
            background: white;
            color: black;
            font-size: 10px;
        }

        .carousel {
            width: 650px;
            margin: 0 auto;
            padding-bottom: 50px;
        }

            .carousel .carousel-item {
                color: #999;
                font-size: 14px;
                text-align: center;
                overflow: hidden;
                min-height: 340px;
            }

                .carousel .carousel-item a {
                    color: #eb7245;
                }

            .carousel .img-box {
                width: 145px;
                height: 145px;
                margin: 0 auto;
                border-radius: 50%;
            }

                .carousel .img-box img {
                    width: 100%;
                    height: 100%;
                    display: block;
                    border-radius: 50%;
                }

            .carousel .testimonial {
                padding: 30px 0 10px;
            }

            .carousel .overview {
                text-align: center;
                padding-bottom: 5px;
            }

                .carousel .overview b {
                    color: #333;
                    font-size: 15px;
                    text-transform: uppercase;
                    display: block;
                    padding-bottom: 5px;
                }

            .carousel .star-rating i {
                font-size: 18px;
                color: #ffdc12;
            }

        .carousel-control-prev, .carousel-control-next {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: #999;
            text-shadow: none;
            top: 4px;
        }

            .carousel-control-prev i, .carousel-control-next i {
                font-size: 20px;
                margin-right: 2px;
            }

        .carousel-control-prev {
            left: auto;
            right: 40px;
        }

        .carousel-control-next i {
            margin-right: -2px;
        }

        .carousel .carousel-indicators {
            bottom: 15px;
        }

        .carousel-indicators li, .carousel-indicators li.active {
            width: 11px;
            height: 11px;
            margin: 1px 5px;
            border-radius: 50%;
        }

        .carousel-indicators li {
            background: #e2e2e2;
            border: none;
        }

            .carousel-indicators li.active {
                background: #888;
            }

        .hero-aside img {
            border-radius: 23px;
        }
    </style>

    <section class="hero">
        <div class="hero-inner">
            <h1>Fresh cake & Perfect Gifts for all Occasions</h1>
            <h2>Trendy items, Factory Prices, Excellent Service</h2>
            <a href="#" class="btn " style="margin-top: 40px; background: #ff57d5; border: none; color: white;">Browse Now</a>
        </div>
        <div class="hero-aside">
            <img src="images/510-5108089_birthday-cake-illustration-happy-birthday-cake-png-transparent.png" style="width:100%;" alt="Alternate Text" />
        </div>
    </section>



    <section>
        <div class="">
            <div class="container">
                <div class="row sec-class" style="margin-top: 150px; margin-bottom: 200px;">
                    <div class="col-md-4">
                        <div class="sec-child">
                            <div>
                                <i class="fa-solid fa-box" style="font-size: 36px; color: #ff57d5;"></i>
                            </div>
                            <div>
                                <h2 style="font-size: 22px; font-weight: bold;">Free Shipping *
                                </h2>
                                <p>Phasellus lorem malesuada ligula cosmopolis </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="sec-child">
                            <div>
                                <i class="fa-solid fa-list-check" style="font-size: 36px; color: #ff57d5;"></i>
                            </div>
                            <div>
                                <h2 style="font-size: 22px; font-weight: bold;">Cake Longitibility
                                </h2>
                                <p>Phasellus lorem malesuada ligula cosmopolis </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="sec-child">
                            <div>
                                <i class="fa-solid fa-circle-question" style="font-size: 36px; color: #ff57d5;"></i>
                            </div>
                            <div>
                                <h2 style="font-size: 22px; font-weight: bold;">Top Notch Customer Service
                                </h2>
                                <p>Phasellus lorem malesuada ligula cosmopolis </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section>
        <div class="container" style="margin-top: 50px; margin-bottom: 100px;">
            <h3 style="font-weight: bold;">
Choose your Favourite Flavour
</h3>
            <div class="row justify-content-center row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">


                <%foreach (var item in this.Items)
                    {%>
                <div class="col mt-4">
                    <div class="card">
                        <img class="card-img-top" src="<%=item.photopath%>" alt="Card image cap">
                        <div class="item-text">
                            <h4><%=item.labelP%></h4>
                            <h2><%=item.priceP%>$</h2>
                        </div>
                        <p id="more-txt<%=item.idP%>"><%=item.desP%></p>
                        <div class="content-details fadeIn-bottom">
                            <a id="viewP" onclick="Viewfunction('<%=item.idP%>')" class="btn btn-secondary  btn-1">Go to Details</a>


                            <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="paypal">

                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="add" value="1">
                                <%--qty--%>

                                <input type="hidden" name="business" value="youremailaddress@yourdomain.com">
                                <input type="hidden" name="item_name" value="<%=item.labelP%>">
                                <%--item name--%>

                                <input type="hidden" name="amount" value="<%=item.priceP%>">
                                <%--price--%>
                                <input type="hidden" name="shopping_url"
                                    value="https://localhost:44339/Default">

                                <input type="hidden" name="return" value="https://localhost:44339/Default">
                                <input type="hidden" name="cancel_return" value="https://localhost:44339/Default">

                                <input type="hidden" name="bn" value="PP-ShopCartBF:x-click-but22.gif:NonHosted">

                                <%--                                 <button id="addP" name="submit" class="btn btn-secondary  btn-2" >Add To Cart</button>--%>
                            </form>


                            <%--<a id="addP" onclick="Cartfunction('<%=item.idP%>',<%=item.priceP%>)" class="btn btn-secondary  btn-2" >Added To Cart</a>--%>
                        </div>
                    </div>
                </div>


                <%}
                %>
            </div>
        </div>
    </section>




    <section>
        <div class="banner-area" style="background: #ff57d5 !important; padding: 30px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img src="images/n.png" alt="Alternate Text" style="width: 50%;" />
                    </div>
                    <div class="col-md-6">
                        <div class="aside-text">
                            <h1 style="font-weight: bold; margin-bottom: 20px; color: white;">Birthday surprices?</h1>
                            <p style="margin-bottom: 50px; color: white;">Make your wish come true</p>
                            <button class="btn btn-danger">Shop Now</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>













    <section style="margin-bottom: 150px; margin-top: 100px;">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <h1 style="font-weight: bold; text-align: center; margin-bottom: 100px;">Customer Review</h1>
            <!-- Carousel indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for carousel items -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="img-box">
                        <img src="images/1.jpg" />

                    </div>
                    <p class="testimonial">Phasellus vitae suscipit justo. Mauris pharetra feugiat ante id lacinia. </p>
                    <p class="overview"><b>Holz Enwa</b>SEO <a href="#">Tech Bern.</a></p>
                    <div class="star-rating">
                        <ul class="list-inline">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="img-box">
                        <img src="images/2.jpg" />

                    </div>
                    <p class="testimonial">Phasellus vitae suscipit justo. Mauris pharetra feugiat ante id lacinia. </p>
                    <p class="overview"><b>John Nameson</b>Geo Scientist at <a href="#">SkyNet.</a></p>
                    <div class="star-rating">
                        <ul class="list-inline">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                        </ul>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="img-box">
                        <img src="images/1.jpg" />
                    </div>
                    <p class="testimonial">Phasellus vitae suscipit justo. Mauris pharetra feugiat ante id lacinia. </p>
                    <p class="overview"><b>Moreno Jeneva</b>Web Developer at <a href="#">Circle Ltd.</a></p>
                    <div class="star-rating">
                        <ul class="list-inline">
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star"></i></li>
                            <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Carousel controls -->
            <%--<a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
		<i class="fa fa-angle-left"></i>
	</a>
	<a class="carousel-control-next" href="#myCarousel" data-slide="next">
		<i class="fa fa-angle-right"></i>
	</a>--%>
        </div>
    </section>


    <script type="text/javascript">

        $(document).ready(function () {
            for (var i = 1; i < 50; i++) {
                let text = document.getElementById("more-txt" + i).innerHTML;
                let result = text.substring(0, 10);
                result += "......"
                document.getElementById("more-txt" + i).innerHTML = result;
            }

        });



        function Viewfunction(idP) {
            //alert(idP);
            window.location = 'ProductDetails.aspx?id=' + idP;
        }
        function Cartfunction(idP, price) {
            window.location = 'addtoCart.aspx?id=' + idP + '&price=' + price;

        }

    </script>


</asp:Content>



