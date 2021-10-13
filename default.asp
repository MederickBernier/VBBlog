<%
    Title = "Classic ASP"
    Logo = "CA"
%>
<!--#include file=includes/header.asp-->
<% If Session("isActive") Then %>
    <!--#include file=includes/carousel_users.asp-->
<% Else %>
    <!--#include file=includes/carousel_invited.asp-->
<% End If %>

<div class="container">
    <div class="row">
        Some random text.
    </div>
</div>

<!--#include file=includes/footer.asp-->