<%
    Title = "Dashboard - Classic ASP"
    Logo = "DB"

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
                    <!--#include file=components/dashboard/clockComponent.asp-->
                </div>
        </div>
    </main>
<!--#include file=includes/dashboard/footer.asp-->