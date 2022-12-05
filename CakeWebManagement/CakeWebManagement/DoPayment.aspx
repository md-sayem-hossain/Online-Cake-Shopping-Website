<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoPayment.aspx.cs" Inherits="CakeWebManagement.DoPayment" %>

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="paypal">

    <input type="text" name="cmd" value="_cart">
    <input type="text" name="add" value="1"> <%--qty--%>

    <input type="text" name="business" value="youremailaddress@yourdomain.com">
    <input type="text" name="item_name" value="My Cart Item 1"> <%--item name--%>

    <input type="text" name="amount" value="10.00"> <%--price--%>
    <input type="hidden" name="shopping_url" 
           value="http://www.yourwebsite.com/shoppingpage.html">

    <input type="text" name="return" value="http://www.yourwebsite.com/success.html">
    <input type="text" name="cancel_return" value="http://www.yourwebsite.com/cancel.html">

    <input type="text" name="bn" value="PP-ShopCartBF:x-click-but22.gif:NonHosted">
    <input type="image" src="https://www.paypal.com/en_US/i/btn/x-click-but22.gif" border="0"

        name="submit" alt="Make payments with PayPal - it's fast, free and secure!">
    <img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1"

        height="1">
</form>

 