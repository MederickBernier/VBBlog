<%
    Title = "Classic ASP"
    Logo = "CA"
%>
<!--#include file=includes/header.asp-->
        <div class="container">
            <div class="row">
                <% If Session("isActive") Then %>
                    Welcome, <% Response.Write(Session("username")) %>
                <% Else %>
                    Welcome
                <% End If %>
            </div>
        </div>
<!--#include file=includes/footer.asp-->