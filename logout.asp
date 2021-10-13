<%
    'This page will remove everything from the session array and redirect to default.asp

    Session.Contents.RemoveAll()

    Response.Redirect "default.asp"
%>