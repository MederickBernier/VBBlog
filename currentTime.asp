<%
    Title = "Current Time"
    Logo = "CT"
%>
<!--#include file=includes/header.asp-->
        <div class="container">
            <div class="row">
                <% Response.Write("Current Time of the Server is:") %><br/>
                <h4><% call writeCurrentTime() %></h4>
            </div>
        </div>
<!--#include file=includes/footer.asp-->