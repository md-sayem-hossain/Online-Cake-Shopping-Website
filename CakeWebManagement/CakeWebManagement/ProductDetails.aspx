<%@ Page Title="ProductDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="CakeWebManagement.ProductDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/product_details_style.css" rel="stylesheet" />

    <style>
        .card {
            padding: 10px;
        }
    </style>





    <div class="card-wrapper" style="margin-top: 100px;">
        <div class="card" style="box-shadow: 0 0 10px #f5434338; border-radius: 20px;">
            <%foreach (var item in this.Items)
                {%>
            <!-- card left -->
            <div class="product-imgs">
                <div class="img-display">
                    <div class="img-showcase">
                        <img class="card-img-top" src="<%=item.photopath%>" alt="Card image cap">
                        <%--<img src="shoes_images/shoe_1.jpg" alt="shoe image">
                        <img src="shoes_images/shoe_2.jpg" alt="shoe image">
                        <img src="shoes_images/shoe_3.jpg" alt="shoe image">
                        <img src="shoes_images/shoe_4.jpg" alt="shoe image">--%>
                    </div>
                </div>
                <%-- <div class="img-select">
                    <div class="img-item">
                        <a href="#" data-id="1">
                            <img src="shoes_images/shoe_1.jpg" alt="shoe image">
                        </a>
                    </div>
                    <div class="img-item">
                        <a href="#" data-id="2">
                            <img src="shoes_images/shoe_2.jpg" alt="shoe image">
                        </a>
                    </div>
                    <div class="img-item">
                        <a href="#" data-id="3">
                            <img src="shoes_images/shoe_3.jpg" alt="shoe image">
                        </a>
                    </div>
                    <div class="img-item">
                        <a href="#" data-id="4">
                            <img src="shoes_images/shoe_4.jpg" alt="shoe image">
                        </a>
                    </div>
                </div>--%>
            </div>
            <!-- card right -->
            <div class="product-content">
                <h4 id="labelP" style="margin-top: 100px;" cssclass="product-title"><%=item.labelP%></h4>
                <a href="#" class="product-link">visit store</a>
                <div class="product-rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                    <span>4.7(21)</span>
                </div>

                <div class="product-price">
                    <p class="new-price" id="priceP">
                        Price:<span> <%=item.priceP%>$
                        </span>
                    </p>
                </div>

                <div class="product-detail">
                    <h2>about this item: </h2>
                    <p><%=item.desP%> </p>
                    <p hidden="hidden"><%=item.idP%> </p>

                </div>

                <div class="purchase-info">
                    <%--<input type="number"  runat="server" id="qtyP" min="0" value="1">--%>

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

                        <button id="addP" name="submit" class="btn btn-secondary  btn-2">Add To Cart</button>

                    </form>
                </div>

            </div>
            <%}
            %>
        </div>
    </div>




    <script src="Scripts/script.js"></script>


    <script>
        $(document).ready(function () {


        });


    </script>
</asp:Content>
