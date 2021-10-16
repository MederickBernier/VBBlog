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

Function checkDateForComponentUpdate()
    'this function will use the current date comparing it to the last date the components folder has been modified and if it's the same day as today then return true else return false

    Dim FileSystemObject, FolderObject, CurrentDate, FolderLastModified
    Set FileSystemObject = Server.CreateObject("Scripting.FileSystemObject")
    Set FolderObject = FileSystemObject.GetFolder(Server.MapPath("/components")
    Set CurrentDate = FormatDateTime(Now,2)
    Set FolderLastModified = FormatDateTime(FolderObject.DateLastModified, 2)

    If CurrentDate = FolderLastModified Then
        checkDateForComponentUpdate = True
    Else
        checkDateForComponentUpdate = False
    End If

    Set FileSystemObject = Nothing
    Set FolderObject = Nothing
    Set CurrentDate = Nothing
    Set FolderLastModified = Nothing
End Function

Sub GetComponents()
    ' use last modified date to check if the folder has to be reloaded in the session with the new components, if it's not the current day then just keep rollin.
    Dim FileSystemObject, FolderObject, Component, ComponentsArray, fileName
    Set FileSystemObject = Server.CreateObject("Scripting.FileSystemObject")
    Set FolderObject = FileSystemObject.GetFolder(Server.MapPath("/components")

    For Each Component in FolderObject.Files
        
    End For

    Set FileSystemObject = Nothing
    Set FolderObject = Nothing

end Sub

%>