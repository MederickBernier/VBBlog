<%
    Title = "Dashboard - Classic ASP"
    Logo = "DB"

    If NOT(sessionActive()) Then
        Response.Redirect "default.asp"
    End If
%>
<!--#include file=includes/header.asp-->
        <div class="container">
            <!-- This will contain the dashboard, we won't need the top navbar, so i might remove it or do another template or something to work it out since the menu will be on the side. -->
        </div>
<!--#include file=includes/footer.asp-->