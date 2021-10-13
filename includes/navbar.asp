<nav class="z-depth-3">
    <div class="nav-wrapper indigo darken-2">
        <a href="default.asp" class="brand-logo white-text">
             &nbsp;<%
                If Logo = Empty then
                    Response.Write("Logo")
                Else
                    Response.Write(Logo)
                End If
            %>
        </a>
        <a href="#" data-target="mobile-nav" class="sidenav-trigger"><i class="material-icons black-text">menu</i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="default.asp" class="white-text">Home</a></li>
            <li><a href="currentTime.asp" class="white-text">Current Time</a></li>
            <li><a href="randomString.asp" class="white-text">Random String Generator</a></li>
            <% If Session("isActive") then %>
                <li><a href="dashboard.asp" class="white-text">Dashboard</a></li>
            <% End If %>
            <% If Session("isActive") then %>
                <li><a href="logout.asp" class="white-text">Logout</a></li>
            <% Else %>
                <li><a href="loginForm.asp" class="white-text">Login</a></li>
            <% End If %>
        </ul>
    </div>
</nav>

<ul class="sidenav indigo darken-2" id="mobile-nav">
    <li><a href="default.asp" class="white-text">Home</a></li>
    <li><a href="currentTime.asp" class="white-text">Current Time</a></li>
    <li><a href="randomString.asp" class="white-text">Random String Generator</a></li>
</ul>