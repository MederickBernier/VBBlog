<%
    Title = "Dashboard - Classic ASP"

    If NOT(sessionActive()) Then
        Response.Redirect "default.asp"
    End If
%>
<!--#include file=includes/dashboard/header.asp-->
    <main>
        <div class="container">
            <!-- Might use component based programming for the dashboard since it can have a lot of little things -->
            <div class="row">
                <div class="col s3 m3 l3">
                    <% Server.Execute((New Clock).Render) %>
                </div>
                <div class="col s3 m3 l3">
                    <% Server.Execute((New Lorem).Render) %>
                </div>
        </div>
    </main>
<!--#include file=includes/dashboard/footer.asp-->