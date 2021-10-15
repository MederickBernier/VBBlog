<%
sub writeCurrentTime()
    Response.Write(Now)
end sub

sub writeRandomString(length)
    alpha = Array("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")
    Dim min, max, randomNumber, returnString
    min = LBound(alpha)
    max = Ubound(alpha)

    Randomize

    for i = 1 to length
        randomNumber = Int((max-min+1)*Rnd+min)
        returnString = returnstring & alpha(randomNumber)
    Next

   Response.Write(returnString)
    returnString = ""
end sub

sub displayWithDoubleQuotes(s)

    tempString = """" & s & """"

    Response.Write(tempString)

end sub

Function sessionActive()
    if Session("isActive") Then
        sessionActive = True
    Else
        sessionActive = False
    End If
end Function

'this section will contain the functions and procedures concerning the component based system that i'm working on.'

Sub GetComponents()
    ' use last modified date to check if the folder has to be reloaded in the session with the new components, if it's not the current day then just keep rollin.
    Dim FileSystemObject, FolderObject, SubFolder, ComponentsArray
    Set FileSystemObject = Server.CreateObject("Scripting.FileSystemObject")
    Set FolderObject = FileSystemObject.GetFolder(Server.MapPath("/components")

    For Each subFolder in FolderObject.Files

end Sub

%>