<%
    'Will login the user using predetermined credentials and redirect to default.asp

    Dim currentUsername, currentPassword, formUsername, formPassword
    username = "user"
    password = "password"

    formUsername = Request.Form("username")
    formPassword = Request.Form("password")

    'compare the form with the hardcoded username and password, if one of them isn't right then redirect to login form

    if NOT(username = formUsername) OR NOT(password = formPassword) then
        Response.Redirect "loginForm.asp"
   End If

    'initialise the session with the username and a isActive property set to true.
    Session("isActive") = true
    Session("username") = formUsername
    
  Response.Redirect "dashboard.asp"  
%>