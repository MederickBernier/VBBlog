<%
    Title = "Random String Generator"

    If(request.querystring("letters") = Empty) then
        Letters = 2
    Else
        Letters = Int(request.querystring("letters"))
    End If
%>
<!--#include file=includes/header.asp-->
        <div class="container">
            <div class="row">
                <!-- Form for the amount of letters -->
                <h4>Choose the amount of letters you want to use for the length of the random strings.</h4>
                <form action="randomString.asp" method="get">
                    <p class="range-field">
                        <input type="range" id="letters" name="letters" min="0" max="100" value=<% call displayWithDoubleQuotes(Letters) %>/>
                    </p>
                    <p>Current Selected Letters: <% Response.Write(Letters) %></p>
                    <button class="btn waves-effect waves-light green darken-2" type="submit">
                        <span>Select Number</span>
                        <i class="material-icons right"> send</i>
                    </button>
                </form>
            </div>
            <div class="row">
                <h4>Random Generated Strings for <% Response.Write(Letters) %> Letters</h1>
                <ol>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>
                    <li><b><span class="larger"><% call writeRandomString(Letters) %></span></b></li>

                </ol>
            </div>
        </div>
<!--#include file=includes/footer.asp-->